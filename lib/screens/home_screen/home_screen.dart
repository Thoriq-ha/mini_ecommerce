import 'package:flutter/material.dart';

import 'Page/chat.dart';
import 'Page/dashboard.dart';
import 'Page/profile.dart';
import 'Page/setting.dart';
import 'components/appbar.dart';

class HomeSreen extends StatefulWidget {
  @override
  _HomeSreenState createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
  int curentTab = 0;
  final List<Widget> screens = [Dashboard(), Chat(), Profile(), Setting()];
  Widget currentScreen = Dashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: PageStorage(
        child: currentScreen,
        bucket: PageStorageBucket(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {},
        backgroundColor: Colors.deepOrange,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Dashboard();
                        curentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color:
                              curentTab == 0 ? Colors.deepOrange : Colors.grey,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: curentTab == 0
                                ? Colors.deepOrange
                                : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Chat();
                        curentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat_rounded,
                          color:
                              curentTab == 1 ? Colors.deepOrange : Colors.grey,
                        ),
                        Text(
                          'Chat',
                          style: TextStyle(
                            color: curentTab == 1
                                ? Colors.deepOrange
                                : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Setting();
                        curentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.settings,
                          color:
                              curentTab == 2 ? Colors.deepOrange : Colors.grey,
                        ),
                        Text(
                          'Setting',
                          style: TextStyle(
                            color: curentTab == 2
                                ? Colors.deepOrange
                                : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Profile();
                        curentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.account_circle_sharp,
                          color:
                              curentTab == 3 ? Colors.deepOrange : Colors.grey,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            color: curentTab == 3
                                ? Colors.deepOrange
                                : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
