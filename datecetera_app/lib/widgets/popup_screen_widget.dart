import 'package:flutter/material.dart';

class PopupScreenWidget extends StatefulWidget {
  final Image popupImage;
  final String title;
  final String description;
  final Widget? button;
  final Widget? button2;


  const PopupScreenWidget({
    super.key,
    required this.popupImage,
    required this.title,
    required this.description,
    this.button,
    this.button2
  });

  @override
  State<PopupScreenWidget> createState() => _PopupScreenWidgetState();
}

class _PopupScreenWidgetState extends State<PopupScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        width: 348,
        height: 495,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.popupImage,
            SizedBox(height: 30),
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Text(
              widget.description,
              textAlign: TextAlign.center,

              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 60),
            if (widget.button != null) widget.button!,
            SizedBox(height: 20),

            if (widget.button2 != null) widget.button2!,

          ],
        ),
      ),
    );
  }
}
