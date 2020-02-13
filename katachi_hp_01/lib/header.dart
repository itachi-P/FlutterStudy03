import 'package:flutter/material.dart';

class Header extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
/*  createState() => new _HeaderState();
}

class _HeaderState extends State<Header> {
  int _sel_menu_num = 0;
  // TODO
  void selectMenu() {
    setState(() {
      this._sel_menu_num = _sel_menu_num;
    });
  }
*/
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      //leading: Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: IconButton(icon: Icons.favorite_border, onPressed: () async {  },),
      title: Image.asset(
        'images/katachi_logo01.png',
        height: 30.0,
        width: 200.0,
        fit: BoxFit.contain,
      ),
      //iconTheme: const IconThemeData.fallback()
      //    .copyWith(color: Color.fromRGBO(200, 0, 200, 0.1)),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.menu,
            size: 40,
            color: Color.fromARGB(500, 0, 0, 200),
          ),
        ),
      ],
    );
  }
}
