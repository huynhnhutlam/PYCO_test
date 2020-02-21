import 'package:flutter/material.dart';

typedef OnTap(int index);

class BottomIconBar extends StatefulWidget {
  final OnTap onTap;

  final int index;

  const BottomIconBar({Key key, this.onTap, this.index}) : super(key: key);
  @override
  _BottomIconBarState createState() => _BottomIconBarState();
}

class _BottomIconBarState extends State<BottomIconBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: widget.index ?? 0,
        onTap: widget.onTap,
        elevation: 0,
        backgroundColor: Colors.transparent,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        selectedFontSize: 12,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(
              Icons.person_outline,
              color: widget.index == 0 ? Colors.green : Colors.grey,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(
              Icons.event,
              color: widget.index == 1 ? Colors.green : Colors.grey,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(
              Icons.map,
              color: widget.index == 2 ? Colors.green : Colors.grey,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(
              Icons.phone,
              color: widget.index == 3 ? Colors.green : Colors.grey,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(
              Icons.lock_outline,
              color: widget.index == 4 ? Colors.green : Colors.grey,
            ),
          )
        ]);
  }
}
