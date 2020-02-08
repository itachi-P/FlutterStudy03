import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo 06',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => FirstPage(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/second') {
          var messageFromFirst = settings.arguments;
          return MaterialPageRoute(
            builder: (context) {
              return SecondPage(
                  messageFromFirst); // SecondPageのコンストラクタは引数無しだと怒られる
            },
          );
        }
        return null;
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
              arguments: 'messeageFromFirstですの。',
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
