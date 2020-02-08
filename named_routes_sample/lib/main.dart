import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => FirstPage(),
        '/second': (context) => SecondPage(),
      },
    );
  }
}

class FirstPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Page')),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/second',
              arguments: 'messeageFromFirstなんですの。',
            );
          },
          child: Text('Next Page'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var messageFromFirst = ModalRoute.of(context).settings.arguments;
    print(messageFromFirst);

    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}
