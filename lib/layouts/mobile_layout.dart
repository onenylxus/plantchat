// Import
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantchat/constants/dimens.dart';
import 'package:plantchat/constants/palette.dart';
import 'package:plantchat/constants/strings.dart';
import 'package:plantchat/constants/styles.dart';
import 'package:plantchat/screens/contacts_screen.dart';
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
    Palette.yellow,
    Palette.lime,
    Palette.green,
    Palette.cobalt,
    Palette.blue,
  ];
  final PageController _controller = PageController(initialPage: 1);
  int _index = 1;

  @override
  Widget build(BuildContext context) {
    final double height = Platform.isIOS ? Dimens.heightIOSBottomNav : Dimens.heightAndroidBottomNav;

    return Scaffold(
      backgroundColor: Palette.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: _colors[_index],
        centerTitle: false,
        title: const Text(
          Strings.title,
          style: Styles.textStyleAppBar,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Palette.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: Palette.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: PageView(
        controller: _controller,
        onPageChanged: (int index) {
          setState(() {
            _index = index;
          });
        },
        children: <Widget>[
          EmptyScreen(color: _colors[0]),
          const ContactsScreen(),
          EmptyScreen(color: _colors[2]),
          EmptyScreen(color: _colors[3]),
          EmptyScreen(color: _colors[4]),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: height,
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
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
