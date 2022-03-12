import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scodar_app/Pages/BuyCredit.dart';
import 'package:scodar_app/Pages/checkBalance.dart';
import 'package:scodar_app/Pages/home.dart';
import 'package:scodar_app/scodar_drawer.dart';



class MainLayout extends StatefulWidget {
  const MainLayout({Key? key}) : super(key: key);

  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {

  int _currentIndex = 0;
  final _myscodarhome = GlobalKey<NavigatorState>();
  final _checkbalance = GlobalKey<NavigatorState>();
  final _buycredit = GlobalKey<NavigatorState>();
  



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
        top: false,
        child: IndexedStack(

        index: _currentIndex,
        children: <Widget>[
          Navigator(
            key: _myscodarhome,
            onGenerateRoute: (route) => MaterialPageRoute(
              settings: route,
              builder: (context) => const MyScodarHome(),
            ),
          ),

          Navigator(
            key: _checkbalance,
            onGenerateRoute: (route) => MaterialPageRoute(
              settings: route,
              builder: (context) => const CheckBalance(),
            ),
          ),
          Navigator(
            key: _buycredit,
            onGenerateRoute: (route) => MaterialPageRoute(
              settings: route,
              builder: (context) => const BuyCredit(),
            ),
          ),
        ],
      ),
      ),
        bottomNavigationBar: BottomAppBar(

          child: BottomNavigationBar(
            backgroundColor: const Color(0xffC4C4C4),
            currentIndex: _currentIndex,

            onTap: (index){
              setState(() {
                _currentIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.grey,
            unselectedItemColor: const Color(0xff263238),
            showUnselectedLabels: true,
            showSelectedLabels: true,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: 'Check Balance'),
              BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: 'Buy Credit'),
              BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
              BottomNavigationBarItem(icon: Icon(Icons.share), label: 'Share App'),
            ],
          ),
        ),



    );
  }
}
