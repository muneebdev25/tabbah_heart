import 'package:flutter/material.dart';
import 'package:myapp/screen1.dart';
import 'package:myapp/screen2.dart';
import 'package:myapp/screen3.dart';
import 'package:myapp/screen4.dart';
import 'package:myapp/screen5.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentTab = 0;

  Widget currentScreen = Screen1();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bottom Navigation",
          style: TextStyle(fontSize: 20, fontFamily: 'poppins'),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: PageStorage(
        bucket: PageStorageBucket(),
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              MaterialButton(
                  minWidth: 60,
                  onPressed: () {
                    setState(() {
                      currentScreen = Screen1();
                      currentTab = 0;
                    });
                  },
                  child: Icon(Icons.home,
                      color: currentTab == 0
                          ? Colors.black
                          : Colors.blueGrey[600])),
              MaterialButton(
                  minWidth: 60,
                  onPressed: () {
                    setState(() {
                      currentScreen = Screen2();
                      currentTab = 1;
                    });
                  },
                  child: Icon(Icons.search,
                      color: currentTab == 1
                          ? Colors.black
                          : Colors.blueGrey[600])),
              MaterialButton(
                  minWidth: 60,
                  onPressed: () {
                    setState(() {
                      currentScreen = Screen3();
                      currentTab = 2;
                    });
                  },
                  child: Icon(Icons.add_box_outlined,
                      color: currentTab == 2
                          ? Colors.black
                          : Colors.blueGrey[600])),
              MaterialButton(
                  minWidth: 60,
                  onPressed: () {
                    setState(() {
                      currentScreen = Screen4();
                      currentTab = 3;
                    });
                  },
                  child: Icon(Icons.favorite_outline,
                      color: currentTab == 3
                          ? Colors.black
                          : Colors.blueGrey[600])),
              MaterialButton(
                  minWidth: 60,
                  onPressed: () {
                    setState(() {
                      currentScreen = Screen5();
                      currentTab = 4;
                    });
                  },
                  child: Icon(Icons.panorama_fisheye_outlined,
                      color: currentTab == 4
                          ? Colors.black
                          : Colors.blueGrey[600])),
            ],
          ),
        ),
      ),
    );
  }
}
