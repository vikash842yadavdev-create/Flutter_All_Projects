import 'package:datecetera_app/config/app_colors.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/hilight_circle_type_widget.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/rich_text_widget.dart';
import 'package:flutter/material.dart';

class HilightFullWidget extends StatefulWidget {
  final String imgSelected;
  final IconData icon;
  final String richText1;
  final String richText2;
  const HilightFullWidget({
    super.key,
    required this.imgSelected,
    required this.icon,
    required this.richText1,
    required this.richText2
  });

  @override
  State<HilightFullWidget> createState() => _HilightFullWidgetState();
}

class _HilightFullWidgetState extends State<HilightFullWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92,
      width: 74,
      child: Column(
        children: [
          HilightCircleTypeWidget(
            imgSelected: widget.imgSelected,
            icon: widget.icon,
          ),
          SizedBox(height: 10),
          RichTextWidget(
            fontSizeInt: 12,
            fontSizeText: 12,
            text1: widget.richText1,
            text2: widget.richText2,
          ),
        ],
      ),
    );
  }
}
