import 'package:flutter/material.dart';
import 'package:scodar_app/bottomAppBar.dart';
import 'package:scodar_app/scodar_drawer.dart';

class CheckBalance extends StatelessWidget {
  const CheckBalance({Key? key}) : super(key: key);

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
              backgroundColor: const Color(0xffC4C4C4)),
          endDrawer: const ScodarDrawer(),

          backgroundColor: const Color(0xffC4C4C4),
          body: const BalanceChecker()),
    );
  }
}

class BalanceChecker extends StatelessWidget {
  const BalanceChecker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Align(
            alignment: Alignment.bottomCenter,
        child: FlatButton(
          onPressed: () {

                      },
          child: Container(
                  height: 120.0,
                  width: 190.0,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0)),
                      border: Border.all(color: const Color(0xff263238)),
                  ),
                  child: const Center(
                    child: Text(
                      'Sim 1',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
        ),
            ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FlatButton(
                  onPressed: () {

                  },
                  child: Container(
                  height: 120.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0)),
                      border: Border.all(color: const Color(0xff263238))),
                  child: const Center(
                    child: Text(
                      'Sim 2',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
              ),
                ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
