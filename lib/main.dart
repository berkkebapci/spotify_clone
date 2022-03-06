import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify/shared/uicolor.dart';
import 'package:spotify/views/view_home.dart';
import 'package:spotify/views/view_library.dart';
import 'package:spotify/views/view_search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _children = [
    const ViewHome(),
    const ViewSearch(),
    const ViewLibrary(),
  ];
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify',
      home: Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: UIColor.primaryBlack,
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          fixedColor: UIColor.white,
          unselectedItemColor: UIColor.white,
          selectedLabelStyle: TextStyle(color: UIColor.white),
          unselectedLabelStyle: TextStyle(color: UIColor.gray),
          selectedIconTheme: IconThemeData(size: 26, color: UIColor.white),
          unselectedIconTheme: IconThemeData(size: 22, color: UIColor.gray),
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
                icon: const Icon(Icons.search),
                label: "Search",
                backgroundColor: UIColor.white),
            BottomNavigationBarItem(
                icon: const Icon(Icons.library_music),
                label: "Library",
                backgroundColor: UIColor.white),
          ],
        ),
      ),
    );
  }
}
