
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scodar_app/Pages/buyCredit.dart';
import 'package:scodar_app/Pages/checkBalance.dart';
import 'package:scodar_app/Pages/history.dart';
import 'package:scodar_app/Pages/home.dart';
import 'package:scodar_app/Pages/shareApp.dart';
import 'package:scodar_app/scodar_drawer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyBottomAppBar(),
    );
  }
}
class MyBottomAppBar extends StatefulWidget {
  const MyBottomAppBar({Key? key}) : super(key: key);

  @override
  _MyBottomAppBarState createState() => _MyBottomAppBarState();
}

class _MyBottomAppBarState extends State<MyBottomAppBar> {
  int _selectedIndex = 0;
 final screens = [
   MyScodarHome(),
   CheckBalance(),
   BuyCredit(),
   History(),
   ShareApp()
 ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(


        backgroundColor: const Color(0xffC4C4C4),

        body: screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xffC4C4C4),
          showUnselectedLabels: true,
          items: const <BottomNavigationBarItem> [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color(0xffC4C4C4),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet),
              label: 'Check balance',
              backgroundColor: Color(0xffC4C4C4),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.credit_card),
              label: 'Buy credit',
              backgroundColor: Color(0xffC4C4C4),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
              backgroundColor: Color(0xffC4C4C4),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.share),
              label: 'Share App',
              backgroundColor: Color(0xffC4C4C4),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black26,
          unselectedItemColor: const Color(0xff263238),
          onTap: _onItemTapped,
          elevation: 4,
        ),
      ),
    );


  }
}

