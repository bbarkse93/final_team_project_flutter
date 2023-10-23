import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_project/ui/pages/post/list_page/post_list_page.dart';

class MainScreens extends StatefulWidget {
  @override
  _MainScreensState createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [PostListPage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          const BottomNavigationBarItem(label: '홈', icon: Icon(CupertinoIcons.home)),
          const BottomNavigationBarItem(label: '동네생활', icon: Icon(CupertinoIcons.square_on_square)),
          const BottomNavigationBarItem(label: '내 근처', icon: Icon(CupertinoIcons.placemark)),
          const BottomNavigationBarItem(label: '채팅', icon: Icon(CupertinoIcons.chat_bubble_2)),
          const BottomNavigationBarItem(label: '나의 당근', icon: Icon(CupertinoIcons.person)),
        ],
      ),
    );
  }
}
