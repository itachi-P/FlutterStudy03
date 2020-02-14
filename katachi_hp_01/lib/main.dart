import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:katachi_hp_01/footer.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<MyApp> {
  var _selected = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'images/katachi_logo01.png',
          height: 30.0,
          width: 200.0,
          fit: BoxFit.contain,
        ),
        flexibleSpace: Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [
                  const Color(0xFF3366FF),
                  const Color(0x0000CCFF),
                ],
                begin: const FractionalOffset(1.0, 0.0),
                end: const FractionalOffset(0.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
        ),
        actions: <Widget>[],
      ),
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
                  setState(() => _selected = 'HOME');
                  Navigator.pop(context);
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
                  setState(() => _selected = 'CONTACT');
                  Navigator.pop(context);
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
                  setState(() => _selected = 'LOGIN');
                  Navigator.pop(context);
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
            Container(
              child: Text(
                _selected,
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Footer(), // TODO
    );
  }
}
