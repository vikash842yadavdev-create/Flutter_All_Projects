import 'package:datecetera_app/config/app_assets.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/myprofile_pick_text_column_widget.dart';
import 'package:flutter/material.dart';

class ProfileDummyImagesWidget extends StatelessWidget {
  const ProfileDummyImagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      width: 348,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyprofilePickTextColumnWidget(
            imgProfile: AppAssets.imgProfile1,
            imgHeight: 40,
            imgWidth: 40,
            descriptionText: 'Dummy',
            textFontSize: 14,
            textColor: const Color.fromARGB(255, 73, 72, 72),
            sizeBoxSize: 3,
          ),
          MyprofilePickTextColumnWidget(
            imgProfile: AppAssets.imgProfile1,
            imgHeight: 40,
            imgWidth: 40,
            descriptionText: 'Dummy',
            textFontSize: 14,
            textColor: const Color.fromARGB(255, 73, 72, 72),
            sizeBoxSize: 3,
          ),
          MyprofilePickTextColumnWidget(
            imgProfile: AppAssets.imgProfile1,
            imgHeight: 40,
            imgWidth: 40,
            descriptionText: 'Dummy',
            textFontSize: 14,
            textColor: const Color.fromARGB(255, 73, 72, 72),
            sizeBoxSize: 3,
          ),
          MyprofilePickTextColumnWidget(
            imgProfile: AppAssets.imgProfile1,
            imgHeight: 40,
            imgWidth: 40,
            descriptionText: 'Dummy',
            textFontSize: 14,
            textColor: const Color.fromARGB(255, 73, 72, 72),
            sizeBoxSize: 3,
          ),
          MyprofilePickTextColumnWidget(
            imgProfile: AppAssets.imgProfile1,
            imgHeight: 40,
            imgWidth: 40,
            descriptionText: 'Dummy',
            textFontSize: 14,
            textColor: const Color.fromARGB(255, 73, 72, 72),
            sizeBoxSize: 3,
          ),
        ],
      ),
    );
  }
}
