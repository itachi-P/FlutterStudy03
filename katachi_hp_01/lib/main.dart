import 'package:flutter/material.dart';
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
          Image.network(
              'http://goope.akamaized.net/66978/191108172416e7zr_l.jpg'),
          Text(
            '汚物は消毒だ〜〜〜！！',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'てめえらの血はなに色だーーーーっ！！',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Color.fromRGBO(255, 0, 0, 0.5)),
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
      persistentFooterButtons: <Widget>[
        FlatButton(
          child: Text('Button1'),
          onPressed: () => setState(() => _label = 'button1 tapped'),
        ),
        IconButton(
          icon: Icon(Icons.map),
          onPressed: () => setState(() => _label = 'map tapped'),
        ),
        IconButton(
          icon: Icon(Icons.mail),
          onPressed: () => setState(() => _label = 'mail tapped'),
        ),
        Text('©2020 就労移行支援事業所　未来のかたち. All Rights Reserved.',
            textAlign: TextAlign.center, style: TextStyle(fontSize: 10.0)),
      ],
    );
  }
}
