import 'package:crypto_v2_null_safety/screen/AnotherTemplate/Template1/T1_BottomNav1_wallet.dart';
import 'package:crypto_v2_null_safety/screen/AnotherTemplate/Template1/T1_BottomNav2_chat.dart';
import 'package:crypto_v2_null_safety/screen/AnotherTemplate/Template1/T1_BottomNav3_new_wallet.dart';
import 'package:crypto_v2_null_safety/screen/AnotherTemplate/Template1/T1_BottomNav4_card.dart';
import 'package:crypto_v2_null_safety/screen/AnotherTemplate/Template1/T1_BottomNav5_profile.dart';
import 'package:flutter/material.dart';

class T1_bottomNav extends StatefulWidget {
  final Widget? child;

  T1_bottomNav({Key? key, this.child}) : super(key: key);

  _T1_bottomNavState createState() => _T1_bottomNavState();
}

class _T1_bottomNavState extends State<T1_bottomNav> {
  int currentIndex = 0;
  bool _color = true;

  ///
  /// Switch case for bottomNav
  ///
  Widget callPage(int current) {
    switch (current) {
      case 0:
        return new T1_wallet();
      case 1:
        return new T1_chat();
      case 2:
        return new T1_new_wallet();
      case 3:
        return new T1_card();
      case 4:
        return new T1_profile();
      default:
        return new T1_wallet();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: callPage(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        // fixedColor: Color(0xFF141C35),
        currentIndex: currentIndex,
        unselectedItemColor: Colors.white38,
        elevation: 2.2,
        selectedItemColor: Colors.white,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(IconData(0xe900, fontFamily: 'wallet')), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.repeat), label: ""),
          BottomNavigationBarItem(
              icon: Icon(IconData(0xe900, fontFamily: 'tab')), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }
}
