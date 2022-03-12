import 'package:flutter/material.dart';
import 'package:scodar_app/Pages/buyCredit.dart';
import 'package:scodar_app/Pages/checkBalance.dart';
import 'package:scodar_app/Pages/history.dart';
import 'package:scodar_app/Pages/home.dart';
import 'package:scodar_app/Pages/settingPage.dart';
import 'package:scodar_app/Pages/shareApp.dart';
import 'package:scodar_app/bottomAppBar.dart';



void main() async {
  runApp(const ScodarApp());
}

class ScodarApp extends StatelessWidget {
  const ScodarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Scodar',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const MyBottomAppBar(),

        '/myscodarhome': (context) => const MyScodarHome(),
        '/settingspage': (context) => const SettingsPage(),
        '/checkbalance': (context) => const CheckBalance(),
        '/buycredit': (context) => const BuyCredit(),
        '/history': (context) => const History(),
        '/shareapp': (context) => const ShareApp(),




      },

     // color: Color(0xffC4C4C4),

    );
  }
}
