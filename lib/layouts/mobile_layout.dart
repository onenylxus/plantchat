// Import
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantchat/constants/palette.dart';
import 'package:plantchat/constants/dimens.dart';
import 'package:plantchat/screens/empty_screen.dart';

// Mobile layout class
class MobileLayout extends StatefulWidget {
  const MobileLayout({ super.key });

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

// Mobile layout state class
class _MobileLayoutState extends State<MobileLayout> {
  final _colors = [
    Palette.red,
    Palette.yellow,
    Palette.green,
    Palette.blue,
    Palette.purple,
  ];
  final PageController _controller = PageController(initialPage: 2);
  int _index = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.black,
      body: PageView(
        controller: _controller,
        children: <Widget>[
          EmptyScreen(color: _colors[0]),
          EmptyScreen(color: _colors[1]),
          EmptyScreen(color: _colors[2]),
          EmptyScreen(color: _colors[3]),
          EmptyScreen(color: _colors[4]),
        ],
        onPageChanged: (int index) {
          setState(() {
            _index = index;
          });
        },
      ),
      bottomNavigationBar: SizedBox(
        height: Platform.isIOS ? Dimens.iosBottomNavHeight : Dimens.androidBottomNavHeight,
        child: BottomNavigationBar(
          items: const<BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.camera),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.play),
              label: '',
            ),
          ],
          currentIndex: _index,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Palette.black,
          selectedItemColor: _colors[_index],
          unselectedItemColor: Palette.white.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (int index) {
            _controller.jumpToPage(index);
          },
        ),
      ),
    );
  }
}
