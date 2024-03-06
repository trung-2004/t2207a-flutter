import 'package:flutter/material.dart';
import 'package:t2207a_flutter/screen/home/home_screen.dart';
import 'package:t2207a_flutter/screen/profile/profile_screen.dart';
import 'package:t2207a_flutter/screen/search/search_screen.dart';

class MyPage extends StatefulWidget{
  const MyPage({Key? key}) : super(key: key);

  @override
  State createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final List<Widget> _screen = [
    const HomeScreen(),
    const SearchScreen(),
    const ProfileScreen(),
  ];
  int _selectedIndex = 0;
  _changeTab(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("T2207A App Example",
        style: TextStyle(color: Colors.white)
        ),
        backgroundColor: Colors.orange,
      ),

      body: _screen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black45,
        onTap: (index) => _changeTab(index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_max_outlined), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search_off_outlined), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: "Profile"),
        ],
      ),
    );
  }
}