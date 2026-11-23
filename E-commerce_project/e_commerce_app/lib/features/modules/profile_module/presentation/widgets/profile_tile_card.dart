import 'package:e_commerce_app/features/data/models/profile_tile_model.dart';
import 'package:e_commerce_app/features/modules/profile_module/presentation/widgets/profile_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTileCard extends StatelessWidget {
  const ProfileTileCard({super.key, required this.items});
  final List<ProfileTileModel> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: Colors.grey.shade300, width: 1),
      ),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: items.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return ProfileTilesWidget(item: items[index]);
        },
      ),
    );
  }
}
