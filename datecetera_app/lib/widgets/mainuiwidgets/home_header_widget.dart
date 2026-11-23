import 'package:datecetera_app/config/app_assets.dart';
import 'package:flutter/material.dart';
class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          /// Profile Image
          CircleAvatar(
            radius: 18,
            backgroundImage: Image.asset(AppAssets.imgProfile1).image,
          ),

          const SizedBox(width: 10),

          /// Greeting Text
          const Text(
            "Hi, Emma",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),

          const Spacer(),

          /// Notification Icon
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
          ),

          /// Filter Button
          Container(
            height: 38,
            width: 38,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: const Icon(Icons.tune, size: 20, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
