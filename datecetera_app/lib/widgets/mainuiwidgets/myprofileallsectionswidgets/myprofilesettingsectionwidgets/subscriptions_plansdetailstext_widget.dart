import 'package:flutter/material.dart';

class SubscriptionsPlansdetailstextWidget extends StatelessWidget {
  final String descText;
  const SubscriptionsPlansdetailstextWidget({super.key,required this.descText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      // height: 53,
      width: 333,
      child: Row(
        children: [
          Icon(Icons.check, color: Colors.green, size: 24),
          SizedBox(width: 10),
          Text(
            descText,

            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
