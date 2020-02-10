import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:katachi_hp_01/header.dart';

void main() {
  //debugPaintSizeEnabled = true;
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Katachi HP clone',
      home: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              Header(), // 外部ファイル化したヘッダーWidget（のインスタンス）を指定
              Image.network(
                  'http://goope.akamaized.net/66978/191108172416e7zr_l.jpg'),
              Container(
                color: Colors.blue,
                width: 400.0,
                height: 160.0,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(15.0),
                margin: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '-就労移行支援事業所「未来のはまち」-',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '経験ゼロのオマエをIT就労できる人材に躾けます',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'オマエに必要なのは『隷属』だけ！！',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                width: 400.0,
                height: 200.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        'images/katachi_row01.png',
                        width: 150.0,
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        'images/katachi_row02.png',
                        width: 150.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.blue,
                width: 400.0,
                height: 80.0,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.all(8.0),
                child: Text(
                  '©2020 就労移行支援事業所　未来のいたち. All Rights Reserved.',
                  style: TextStyle(
                    fontSize: 10.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
