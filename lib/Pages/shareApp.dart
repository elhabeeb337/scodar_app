import 'package:flutter/material.dart';
import 'package:scodar_app/scodar_drawer.dart';

class ShareApp extends StatelessWidget {
  const ShareApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            iconTheme: const IconThemeData(color: Color(0xff263238)),
            title: const Text('SCODAR'),
            titleTextStyle: const TextStyle(
              color : Color(0xff263238),
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
            backgroundColor: const Color(0xffC4C4C4)),
        endDrawer: const ScodarDrawer(),


        backgroundColor: const Color(0xffC4C4C4),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 140.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Coming soon',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
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
