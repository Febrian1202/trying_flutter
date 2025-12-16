import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$number', style: GoogleFonts.poppins(fontSize: 40)),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  number++;
                });
                log('$number');
              },
              child: Text('Increment'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  number--;
                });
                log('$number');
              },
              child: Text('Decrement'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  number = 0;
                });
                log('$number');
              },
              child: Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
