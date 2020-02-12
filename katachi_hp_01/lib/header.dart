import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      backgroundColor: Colors.white,
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
          //onPressed: () => setXXXX, // TODO setState()の実装
        ),
      ],
    ); //TODO 仮。最終的には実装したWidgetクラスを返す
  }
}

class Header extends StatefulWidget {
  @override
  HeaderState createState() => new HeaderState();
}
