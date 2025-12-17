import 'dart:developer';

import 'package:flutter/material.dart';

class ScrollDemo extends StatelessWidget {
  const ScrollDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Center(
          child: const Text(
            'SingleChildScrollView & List View',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: ListView(children: createContainers()),
    );
  }

  List<Widget> createContainers() => List.generate(
    40,
    (index) => Builder(
      builder: (context) {
        log('Rendering Container $index');
        return UnconstrainedBox(
          child: Container(
            margin: EdgeInsets.all(20),
            height: 100,
            width: 100,
            color: Colors.red,
            child: Center(
              child: Text(
                index.toString(),
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[350],
                ),
              ),
            ),
          ),
        );
      },
    ),
  );
}
