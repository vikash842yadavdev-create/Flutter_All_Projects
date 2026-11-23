import 'package:flutter/material.dart';

class HomeScreenTodoMain extends StatelessWidget {
  final String? title;
  final bool checkvlaue;
  final void Function(bool?)? onChanged;
  final IconData icons;
  final VoidCallback? onDelete;

  const HomeScreenTodoMain({
    super.key,
    required this.checkvlaue,
    required this.onChanged,
    required this.title,
    required this.icons,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Container(
        // height: 100,
        width: double.infinity,

        decoration: BoxDecoration(
          color: Colors.yellow[200],
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),

        child: Center(
          child: ListTile(
            leading: Checkbox(
              value: checkvlaue,
              onChanged: onChanged,
              activeColor: Colors.black,
            ),
            title: Text(
              title.toString(),
              // maxLines: 2,
              // overflow: TextOverflow.ellipsis,
              style: TextStyle(
                decoration: checkvlaue
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                fontSize: 20,
              ),
            ),
            trailing: InkWell(
              onTap: onDelete,
              child: Icon(icons, color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
