import 'package:flutter/material.dart';

class OnOffIndicatorr extends StatelessWidget {
  final bool isOn;
  final Color onColor;
  const OnOffIndicatorr({super.key, this.isOn = false, required this.onColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: isOn ? onColor : Colors.grey,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
    );
  }
}
