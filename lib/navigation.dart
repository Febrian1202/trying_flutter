import 'dart:developer';

import 'package:flutter/material.dart';
// import 'package:porto/gesture_detector.dart';
import 'package:porto/second_page.dart';

class NavigationDemo extends StatefulWidget {
  const NavigationDemo({super.key});

  @override
  State<NavigationDemo> createState() => __NavigationDemoStateState();
}

class __NavigationDemoStateState extends State<NavigationDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: Center(
          child: const Text(
            'Navigation Demo',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 250,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push<String>(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              ).then((value) => log(value ?? 'No data returned'));
            },
            child: Text('Go to Second Page'),
          ),
        ),
      ),
    );
  }
}
