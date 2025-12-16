import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WrapDemo extends StatelessWidget {
  const WrapDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: Text(
          'Wrap Demo',
          style: GoogleFonts.poppins(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey.shade400,
        child: Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.end,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 10,
          runSpacing: 10,
          verticalDirection: VerticalDirection.up,
          children: List.generate(
            13,
            (index) => Container(
              width: index % 2 == 0 ? 100 : 75,
              height: index % 2 == 0 ? 100 : 75,
              color: index % 2 == 0 ? Colors.red : Colors.blue,
              child: Center(
                child: Text(
                  index.toString(),
                  style: const TextStyle(fontSize: 50, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
