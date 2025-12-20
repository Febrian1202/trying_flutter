import 'package:flutter/material.dart';
import 'package:porto/custom_widget.dart';
// import 'package:porto/datetime_picker.dart';
// import 'package:porto/image_picker.dart';
// import 'package:porto/about_dialog.dart';
// import 'package:porto/alert_dialog.dart';
// import 'package:porto/simple_dialog.dart';
// import 'package:porto/dropdown.dart';
// import 'package:porto/gesture_detector.dart';
// import 'package:porto/navigation.dart';
// import 'package:porto/pageview.dart';
// import 'package:porto/scroll.dart';
// import 'package:porto/icon_widget.dart';
// import 'package:porto/textfield.dart';
// import 'package:porto/align.dart';
// import 'package:porto/padding_widget.dart';
// import 'package:porto/wrap.dart';
// import 'package:porto/main_page.dart';
// import 'package:porto/stack_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const CustomWidgetDemo());
  }
}
