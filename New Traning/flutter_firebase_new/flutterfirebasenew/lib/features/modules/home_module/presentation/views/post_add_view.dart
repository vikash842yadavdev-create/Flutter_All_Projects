import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterfirebasenew/features/config/themes/app_colors.dart';
import 'package:flutterfirebasenew/features/modules/home_module/presentation/controller/home_view_controller.dart';
import 'package:get/get.dart';

class PostAddView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GetBuilder<HomeViewController>(
          builder: (controller) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30.h),

                Text('Post View', style: TextStyle(fontSize: 32)),
                SizedBox(height: 30.h),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.5),
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                    child: TextField(
                      maxLines: 1,
                      onChanged: (String value) {
                        controller.update();
                      },
                      controller: controller.searchController,
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(color: AppColors.text1),
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                Expanded(
                  child: FirebaseAnimatedList(
                    query: controller.databaseRef,
                    itemBuilder: (context, snapshot, animation, index) {
                      final listText = snapshot
                          .child('description')
                          .value
                          .toString();

                      if (controller.searchController.text.isEmpty) {
                        return ListTile(
                          title: Text('${snapshot.child('id').value}'),
                          subtitle: Text(
                            '${snapshot.child('description').value}',
                          ),
                          trailing: PopupMenuButton(
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                value: 1,
                                child: ListTile(
                                  onTap: () {
                                    Navigator.pop(context);
                                    controller.showMyDialog(
                                      context,

                                      id: snapshot.child('id').value.toString(),
                                      title: listText,
                                    );
                                  },
                                  leading: Icon(Icons.edit),
                                  title: Text('Edit'),
                                ),
                              ),
                              PopupMenuItem(
                                value: 2,
                                child: ListTile(
                                  onTap: () {
                                    controller.databaseRef
                                        .child(
                                          snapshot.child('id').value.toString(),
                                        )
                                        .remove();
                                    Navigator.pop(context);
                                  },
                                  leading: Icon(Icons.delete),
                                  title: Text('Delete'),
                                ),
                              ),
                            ],
                          ),
                        );
                      } else if (listText.toLowerCase().contains(
                        controller.searchController.text.toLowerCase(),
                      )) {
                        return ListTile(
                          title: Text('${snapshot.child('id').value}'),
                          subtitle: Text(
                            '${snapshot.child('description').value}',
                          ),
                        );
                      } else {
                        return Container();
                      }
                    },
                  ),
                ),

                SizedBox(height: 30.h),
              ],
            );
          },
        ),
      ),
    );
  }
}
