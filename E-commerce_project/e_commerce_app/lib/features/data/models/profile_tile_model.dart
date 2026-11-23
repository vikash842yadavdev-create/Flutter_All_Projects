import 'package:flutter/material.dart';

class ProfileTileModel {
  final String title;
  final IconData icon;
  final VoidCallback? onTap;

  const ProfileTileModel({required this.title, required this.icon, this.onTap});
}
