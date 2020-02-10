import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:katachi_hp_01/header.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<MyApp> {
  var _label = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(), // 外部ファイル化したヘッダーWidget（のインスタンス）を指定
      body: Column(
        children: <Widget>[
          Image.asset('images/katachi_logo01.png'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () => setState(() => _label = 'home tapped'),
              ),
              FlatButton(
                child: Text('About us'),
                onPressed: () => setState(() => _label = 'About tapped'),
              ),
              FlatButton(
                child: Text('curriculum'),
                onPressed: () => setState(() => _label = 'curriculum tapped'),
              ),
              FlatButton(
                child: Text('photos'),
                onPressed: () => setState(() => _label = 'photos tapped'),
              ),
            ],
          ),
          Image.network(
              'http://goope.akamaized.net/66978/191108172416e7zr_l.jpg'),
          Column(
            children: <Widget>[
              Text(
                '汚物は消毒だ〜〜〜！！(▽∀▽)＜炎炎炎炎炎',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'てめえらの血はなに色だーーーーっ！！(# ﾟДﾟ)',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic,
                    color: Color.fromRGBO(255, 0, 0, 0.8)),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Image.asset('images/katachi_row01.png'),
              ),
              Expanded(
                child: Image.asset('images/katachi_row02.png'),
              ),
              Expanded(
                child: Image.asset('images/katachi_row03.png'),
              ),
            ],
          ),
          Expanded(
            child: Center(
              child: Text(_label, style: TextStyle(fontSize: 20.0)),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white70,
      persistentFooterButtons: <Widget>[
        Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.mail),
              onPressed: () => setState(() => _label = 'mail tapped'),
            ),
            Text(
              '©2020 就労移行支援事業所　未来のいたち. All Rights Reserved.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10.0),
            ),
          ],
        ),
      ],
    );
  }
}
