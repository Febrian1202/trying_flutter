import 'dart:developer';

import 'package:flutter/material.dart';

class GestureDemo extends StatefulWidget {
  const GestureDemo({super.key});

  @override
  State<GestureDemo> createState() => _GestureDemoState();
}

class _GestureDemoState extends State<GestureDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: Center(
          child: const Text(
            'Gesture Detector',
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
        child: GestureDetector(
          // onTap: () => log(' Container tapped! '),
          // onTapDown: (details) => log(
          //   ' Tap down at: ${details.globalPosition} ${details.localPosition} ${details.kind}',
          // ),
          // onTapUp: (details) => log(
          //   ' Tap up at: ${details.globalPosition} ${details.localPosition} ${details.kind}',
          // ),
          // onTapCancel: () => log(' Tap cancelled '),
          // onDoubleTap: () => log(' Container double tapped! '),
          // onDoubleTapDown: (details) => log(
          //   ' Double Tap down at: ${details.globalPosition} ${details.localPosition} ${details.kind}',
          // ),
          // onDoubleTapCancel: () => log(' Double Tap cancelled '),
          onLongPress: () => log(' Container long pressed! '),
          onLongPressDown: (details) => log(
            ' Long Press down at: ${details.globalPosition} ${details.localPosition} ${details.kind}',
          ),
          onLongPressStart: (details) => log(
            ' Long Press start at: ${details.globalPosition} ${details.localPosition} ',
          ),
          onLongPressUp: () => log(' Long Press up '),
          onLongPressEnd: (details) => log(
            ' Long Press end at: ${details.globalPosition} ${details.localPosition} ',
          ),
          onLongPressMoveUpdate: (details) => log(
            ' Long Press move update at: ${details.globalPosition} ${details.localPosition} Offset: ${details.offsetFromOrigin} ${details.localOffsetFromOrigin} ',
          ),
          onLongPressCancel: () => log(' Long Press cancelled '),
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.red, Colors.blue],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
