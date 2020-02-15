import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is Home'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.menu), onPressed: null // TODO
              )
        ],
      ),
      body: Container(
        width: 300.0,
        height: 500.0,
        padding: EdgeInsets.only(left: 40.0),
        margin: EdgeInsets.only(top: 80.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
            width: 8.0,
          ),
        ),
        child: Text('test'),
      ),
    );
  }
}
