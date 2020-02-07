import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo 04b',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Page')),
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            var message = await Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) {
                    return SecondPage('FirstPageから来た');
                  },
                  fullscreenDialog: true), // モーダル遷移(サブタスク画面移動)の場合
            );
            print(message);
          },
          child: Text('Next Page'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String messageFromFirst;
  SecondPage(this.messageFromFirst);

  Widget build(BuildContext context) {
    print(messageFromFirst);
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop<String>(context, "SecondPageから戻った");
          },
          child: Text('Go back'),
        ),
      ),
    );
  }
}
