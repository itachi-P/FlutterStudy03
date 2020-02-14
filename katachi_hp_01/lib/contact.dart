import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Page'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //Navigator.popUntil(context, ModalRoute.withName("/"));
            Navigator.pop(context);
          },
          child: Text('BACK'),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('This is Drawer Header.'),
              decoration: BoxDecoration(
                gradient: new LinearGradient(
                  colors: [Colors.blue, const Color(0x0000CCFF)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
