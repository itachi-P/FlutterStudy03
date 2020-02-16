import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:katachi_hp_01/contact.dart';
import 'package:katachi_hp_01/footer.dart';
import 'package:katachi_hp_01/header.dart';
import 'package:katachi_hp_01/home.dart';
import 'package:katachi_hp_01/login.dart';
import 'package:katachi_hp_01/right_menu.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

void main() {
  //debugPaintSizeEnabled = true;
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      //home: MyApp(),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => MyApp(),
        '/home': (BuildContext context) => Home(),
        '/contact_page': (BuildContext context) => Contact(),
        '/login': (BuildContext context) => Login(),
        '/right_menu': (BuildContext context) => RightMenu(),
      },
    ),
  );
}

class _State extends State<MyApp> {
  //var _selected = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.blue, //This will change the drawer background
        ),
        child: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text(
                  'HOME',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  //setState(() => _selected = '/home');
                  Navigator.popAndPushNamed(context, '/home');
                },
              ),
              ListTile(
                title: Text(
                  'CONTACT',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  //setState(() => _selected = '/contact_page');
                  Navigator.popAndPushNamed(context, '/contact_page');
                },
              ),
              ListTile(
                title: Text(
                  'LOGIN',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  //setState(() => _selected = '/login');
                  Navigator.popAndPushNamed(context, '/login');
                },
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: 400,
              height: 140.0,
              padding: EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
              child: Image.network(
                  'http://goope.akamaized.net/66978/191108172416e7zr_l.jpg'),
            ),
            Container(
              color: Colors.blue,
              width: 400.0,
              height: 150.0,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(15.0),
              margin: const EdgeInsets.fromLTRB(0, 0, 8.0, 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '-就労移行支援事業所「未来のはまち」-\n経験ゼロのオマエをIT就労できる人材に躾けます\nオマエに必要なのは『隷属』だけ！！',
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                      height: 1.7,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              width: 400.0,
              height: 250.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: Image.asset(
                      'images/katachi_row01.png',
                      width: 160.0,
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      'images/katachi_row02.png',
                      width: 160.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
