import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Home(仮)'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.menu,
              size: 30,
              color: Color.fromRGBO(20, 250, 30, 0.7),
            ),
            onPressed: () {
              // TODO
              print("This menu is dummy.");
            },
          ),
        ],
      ),
      body: Container(
        width: 300.0,
        height: 500.0,
        padding: EdgeInsets.only(left: 30.0, top: 20.0),
        margin: EdgeInsets.only(top: 80.0, left: 5.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
            width: 8.0,
          ),
        ),
        child: Text(
          '今現在実質的なホーム画面である'
          '初期画面からHeaderとFooterだけを共通部分として残し、'
          'メインのbody部分はメニュー選択によって入れ替わる静的画面の1つとして'
          'このページ(home.dart/Homeクラス)に持ってきたい',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
