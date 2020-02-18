import 'package:flutter/material.dart';
import 'package:my_first_app/my_account_widget.dart';
import 'home_widget.dart';
import 'message_widget.dart';
import 'profile_widget.dart';

class BottomTabBar extends StatefulWidget {
  BottomTabBar() : super();
  @override
  _BottomTabBar createState() => _BottomTabBar();
}

class _BottomTabBar extends State<BottomTabBar> {
  int itemIndex = 0;
  final _title = ['Dashboard', 'Messages', 'Profile', 'My Account'];

  final List<Widget> _children = [
    Home(),
    Message(),
    ProfilePage(),
    MyAccount()
  ];

  void changeIndex(int index) {
    setState(() {
      itemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_title[itemIndex]),
          backgroundColor: Colors.teal,
          actions: <Widget>[
            IconButton(
              icon: new Icon(Icons.help_outline),
              onPressed: () {
                print('Press');
              },
            ),
          ],
        ),
        body: _children[itemIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.teal,
          currentIndex: itemIndex,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.home,
                color: itemIndex == 0 ? Colors.tealAccent : Colors.grey[100],
              ),
              title: new Text(
                'Dashboard',
                style: TextStyle(
                    color:
                        itemIndex == 0 ? Colors.tealAccent : Colors.grey[100]),
              ),
            ),
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.mail,
                color: itemIndex == 1 ? Colors.tealAccent : Colors.grey[100],
              ),
              title: new Text(
                'Messages',
                style: TextStyle(
                  color: itemIndex == 1 ? Colors.tealAccent : Colors.grey[100],
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: itemIndex == 2 ? Colors.tealAccent : Colors.grey[100],
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                  color: itemIndex == 2 ? Colors.tealAccent : Colors.grey[100],
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: itemIndex == 3 ? Colors.tealAccent : Colors.grey[100],
              ),
              title: Text(
                'Settings',
                style: TextStyle(
                  color: itemIndex == 3 ? Colors.tealAccent : Colors.grey[100],
                ),
              ),
            )
          ],
          onTap: changeIndex,
        ),
        backgroundColor: Colors.grey[200]);
  }
}
