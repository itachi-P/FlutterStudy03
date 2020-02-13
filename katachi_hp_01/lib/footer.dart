import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer();

  @override
  _Footer createState() => _Footer();
}

class _Footer extends State {
  int _selectedIndex = 0;
  final _bottomNavigationBarItems = [];

  // Icon's List
  static const _footerIcons = [
    Icons.home,
    Icons.mail_outline,
    Icons.person,
  ];

  //Icon's String
  static const _footerItemNames = [
    'HOME',
    'CONTACT',
    'LOGIN',
  ];

  @override
  void initState() {
    super.initState();
    _bottomNavigationBarItems.add(_UpdateActiveState(0));
    for (var i = 1; i < _footerItemNames.length; i++) {
      _bottomNavigationBarItems.add(_UpdateDeactiveState(i));
    }
  }

  /// Activate index item
  BottomNavigationBarItem _UpdateActiveState(int index) {
    return BottomNavigationBarItem(
      icon: Icon(
        _footerIcons[index],
        color: Colors.blueAccent,
      ),
      title: Text(
        _footerItemNames[index],
        style: TextStyle(
          color: Colors.white38,
        ),
      ),
    );
  }

  /// Deactivate index item
  BottomNavigationBarItem _UpdateDeactiveState(int index) {
    return BottomNavigationBarItem(
      icon: Icon(
        _footerIcons[index],
        color: Colors.black12,
      ),
      title: Text(
        _footerItemNames[index],
        style: TextStyle(
          color: Colors.black26,
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _bottomNavigationBarItems[_selectedIndex] =
          _UpdateDeactiveState(_selectedIndex);
      _bottomNavigationBarItems[index] = _UpdateActiveState(index);
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed, // Required when displaying 4 or more
      items: _bottomNavigationBarItems,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}
