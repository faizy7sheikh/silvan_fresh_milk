import 'package:dairy_app/screens/category_screen.dart';
import 'package:dairy_app/screens/history.dart';
import 'package:dairy_app/screens/home_screen.dart';
import 'package:dairy_app/screens/home_screen_main.dart';
import 'package:dairy_app/screens/more_screen.dart';
import 'package:dairy_app/screens/otp_verification_scree.dart';
import 'package:dairy_app/screens/product_screen.dart';
import 'package:dairy_app/screens/profile_screen.dart';
import 'package:dairy_app/screens/refer_screen.dart';
import 'package:dairy_app/screens/splash_screen.dart';
import 'package:dairy_app/screens/subscription.dart';
import 'package:flutter/material.dart';
import 'package:dairy_app/screens/login.dart';
import 'package:flutter/services.dart';
import 'package:dairy_app/screens/help_screen.dart';
import 'package:dairy_app/screens/vacation_screen.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.grey[400]
    )
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeMainPage(),
    ProductListPage(),
    ProfileForm(),
    ReferFriendScreen(),
    ProductSubscriptionPage(),
  ]; 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF5F5F3)
      ),
      
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.lightBlueAccent,),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt_rounded, color: Colors.lightBlueAccent,),label: 'Category'),
          BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.lightBlueAccent,),label: 'Subscription'),
          BottomNavigationBarItem(icon: Icon(Icons.group_add_rounded, color: Colors.lightBlueAccent,),label: 'Refer'),
          BottomNavigationBarItem(icon: Icon(Icons.switch_access_shortcut_add_rounded, color: Colors.lightBlueAccent,),label: 'More'),
        ]
        ),
        body: _screens[_currentIndex],
      ),
      routes: {
        '/category': (context) => ProductListPage(),
        '/notifications': (context) => HomePage(),
        '/refer': (context) => ReferFriendScreen(),
        '/more': (context) => ProductSubscriptionPage(),
        '/profile' :(context) => ProfileForm(),
        '/history' :(context) => HistoryPage(),
        '/subscription' : (context) => SubscriptionCard(),
        '/vacation' : (context) => VacationList(),
        '/help' : (context) => NeedHelp()
      },
    );
  }
}