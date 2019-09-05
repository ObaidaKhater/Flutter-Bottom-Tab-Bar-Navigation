import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bottom_tabbar/add_screen.dart';
import 'package:flutter_bottom_tabbar/chat_screen.dart';
import 'package:flutter_bottom_tabbar/profile_screen.dart';
import 'package:flutter_bottom_tabbar/setting_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTab = 0;

  List<Widget> screens = [
    ProfileScreen(),
    AddScreen(),
    ChatScreen(),
    SettingScreen()
  ];

  Widget currentScreen = ProfileScreen();
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.indigo,

      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.orange,
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        elevation: 40,
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = ProfileScreen();
                      currentTab = 0;
                    });
                  },
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.person, color: (currentTab == 0) ? Colors.blue : Colors.grey,),
                      Text('Profile', style: TextStyle(color: (currentTab == 0) ? Colors.blue : Colors.grey),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = AddScreen();
                      currentTab = 1;
                    });
                  },
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.menu, color: (currentTab == 1) ? Colors.blue : Colors.grey,),
                      Text('Add', style: TextStyle(color: (currentTab == 1) ? Colors.blue : Colors.grey),
                      )
                    ],
                  ),
                ),

                SizedBox(width: 40),

                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = ChatScreen();
                      currentTab = 2;
                    });
                  },
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.chat, color: (currentTab == 2) ? Colors.blue : Colors.grey,),
                      Text('Chat', style: TextStyle(color: (currentTab == 2) ? Colors.blue : Colors.grey),
                      )
                    ],
                  ),
                ),

                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = SettingScreen();
                      currentTab = 3;
                    });
                  },
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.settings, color: (currentTab == 3) ? Colors.blue : Colors.grey,),
                      Text('Setting', style: TextStyle(color: (currentTab == 3) ? Colors.blue : Colors.grey),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
