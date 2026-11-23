import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterfirebasenew/features/config/themes/app_colors.dart';
import 'package:flutterfirebasenew/features/modules/home_module/presentation/controller/firestore_view_controller.dart';
import 'package:get/get.dart';

class FirestoreDataView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GetBuilder<FirestoreViewController>(
          builder: (controller) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30.h),

                Text('Data View', style: TextStyle(fontSize: 32)),
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
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(color: AppColors.text1),
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.h),

                StreamBuilder<QuerySnapshot>(
                  stream: controller.fireStore.snapshots(),
                  builder:
                      (
                        BuildContext context,
                        AsyncSnapshot<QuerySnapshot> snapshot,
                      ) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return CircularProgressIndicator();
                        }
                        if (snapshot.hasError) {
                          return Text('Some Error');
                        }
                        return Expanded(
                          child: ListView.builder(
                            itemCount: snapshot.data!.docs.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(
                                  snapshot.data!.docs[index]['id'].toString(),
                                ),
                                subtitle: Text(
                                  snapshot.data!.docs[index]['title']
                                      .toString(),
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

                                            id: snapshot.data!.docs[index]['id']
                                                .toString(),
                                            title: snapshot
                                                .data!
                                                .docs[index]['title']
                                                .toString(),
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
                                          controller.fireStore
                                              .doc(
                                                snapshot.data!.docs[index]['id']
                                                    .toString(),
                                              )
                                              .delete();
                                          Navigator.pop(context);
                                        },
                                        leading: Icon(Icons.delete),
                                        title: Text('Delete'),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        );
                      },
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
