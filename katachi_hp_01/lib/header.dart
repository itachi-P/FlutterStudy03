import 'package:flutter/material.dart';

class Header extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.menu),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.audiotrack),
        ),
      ],
      title: Text(
        '未来のいたち',
      ),
      backgroundColor: Colors.blueAccent,
      centerTitle: true,
      elevation: 1.0,
    );
  }
}
