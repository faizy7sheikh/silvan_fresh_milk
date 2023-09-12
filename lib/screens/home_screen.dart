import 'package:dairy_app/screens/category_screen.dart';
import 'package:dairy_app/screens/home_screen_main.dart';
import 'package:dairy_app/screens/more_screen.dart';
import 'package:dairy_app/screens/product_screen.dart';
import 'package:dairy_app/screens/refer_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/CategoryListWidget.dart';
import '../widgets/appbarwidget.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeMainPage(),
    ProductListPage(),
    HomePage(),
    ReferFriendScreen(),
    ProductSubscriptionPage(),
  ]; 



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottom navigation
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.lightBlueAccent,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.lightBlueAccent,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.lightBlueAccent,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.lightBlueAccent,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.lightBlueAccent,),label: ''),
        ]
        ),
      body: _screens[_currentIndex],
    );
  }
}
