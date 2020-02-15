import 'package:flutter/material.dart';

/*
class Login extends StatefulWidget {
  // Constructor
  Login({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Login createState() => new _Login();
}

class _Login extends State<Login> {
  int _counter = 0;
  List<String> _data;

  void _incrementCounter() {
    // Redraw screen
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Design Widget
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              _data.length.toString(),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        // 定義した再描画メソッドをボタン押下時のアクションにセット
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
 */

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login page'),
      ),
      body: Center(
        child: Text('This is authentication page.'),
      ),
    );
  }
}
