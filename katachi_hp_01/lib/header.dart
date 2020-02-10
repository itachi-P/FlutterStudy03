import 'package:flutter/material.dart';

class Header extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.menu,
          color: Color.fromRGBO(0, 10, 255, 0.8),
          size: 24.0,
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.audiotrack,
            color: Colors.lightGreenAccent,
            size: 24.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
        ),
      ],
      title: Text(
        '未来のはまちHP',
        style: TextStyle(
          color: Color.fromRGBO(20, 20, 20, 0.7),
          fontSize: 20.0,
        ),
      ),
      backgroundColor: Colors.cyan,
      centerTitle: true,
      elevation: 1.0,
    );
  }
}
