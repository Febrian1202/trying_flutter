import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          'Stack Demo',
          style: GoogleFonts.poppins(fontSize: 20, color: Colors.white),
        ),
      ),
      body: Container(
        width: 300,
        height: 300,
        color: Colors.yellow.shade100,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              color: Colors.grey.withOpacity(0.3),
              child: Container(
                margin: EdgeInsets.all(0),
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
            Container(
              color: Colors.grey.withOpacity(0.3),
              child: Container(
                margin: EdgeInsets.all(20),
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ),
            Container(
              color: Colors.grey.withOpacity(0.3),
              child: Container(
                margin: EdgeInsets.all(40),
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
