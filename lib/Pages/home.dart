


import 'package:flutter/material.dart';
import 'package:scodar_app/Pages/shareApp.dart';
import 'package:scodar_app/bottomAppBar.dart';
import 'package:scodar_app/main_layout.dart';
import 'package:scodar_app/scodar_drawer.dart';

import 'buyCredit.dart';
import 'checkBalance.dart';
import 'history.dart';




class MyScodarHome extends StatelessWidget {
  const MyScodarHome({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Color(0xff263238)),
          title: const Text('SCODAR'),
          titleTextStyle: const TextStyle(
            color: Color(0xff263238),
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
          backgroundColor: const Color(0xffC4C4C4),

        ),
        endDrawer: const ScodarDrawer(),

        backgroundColor: const Color(0xffC4C4C4),

        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 60.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Place the camera over the voucher',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Container(
                        width: 260.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(6.0)),
                          color: const Color(0xffABC1D6),
                          border: Border.all(color: const Color(0xff263238)),
                        ),
                      ),
                      const SizedBox(height: 140.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.highlight),
                            iconSize: 40.0,
                            color: const Color(0xff263238),
                            onPressed: () {

                            },
                          ),
                          const SizedBox(height: 20.0),
                          const Text('Press the torch for more light',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

      ),

    );

  }
}



