import 'package:datecetera_app/config/app_colors.dart';
import 'package:flutter/material.dart';

class UploadPhotosVideoWidget extends StatefulWidget {
  int width;
  int height;
  String? description;
  UploadPhotosVideoWidget({super.key, this.width = 110, this.height = 144, this.description});


  @override
  State<UploadPhotosVideoWidget> createState() => _UploadPhotosVideoWidgetState();
}

class _UploadPhotosVideoWidgetState extends State<UploadPhotosVideoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width.toDouble(),
      height: widget.height.toDouble(),
      decoration: BoxDecoration(
        color: AppColors.uploadPhotoContainerColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.onBoardingTileBorder, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image.asset(
              'assets/images/imgCloudUpload.png',
              width: 30,
              height: 30,
            ),
            SizedBox(height: 10),
            Text(
              widget.description ?? 'Upload your profile',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.black,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
