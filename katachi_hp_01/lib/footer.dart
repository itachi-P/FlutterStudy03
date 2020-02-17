import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer();

  @override
  _Footer createState() => _Footer();
}

class _Footer extends State {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 10, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blueGrey,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.pink],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        // BottomNavigationBarの背景色がどうしてもグラデーションにできないので変更
        child: Row(
          children: <Widget>[
            Expanded(
              child: BottomNavigationBar(
                backgroundColor: Colors.blue,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text('HOME', style: optionStyle),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.mail_outline,
                      color: Colors.white,
                    ),
                    title: Text(
                      'CONTACT',
                      style: optionStyle,
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    title: Text(
                      'LOGIN',
                      style: optionStyle,
                    ),
                  ),
                ],
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
                selectedItemColor: Colors.amber[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
