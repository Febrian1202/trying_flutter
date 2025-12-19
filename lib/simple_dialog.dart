import 'dart:developer';

import 'package:flutter/material.dart';

class SimpleDialogDemo extends StatefulWidget {
  const SimpleDialogDemo({super.key});

  @override
  State<SimpleDialogDemo> createState() => _SimpleDialogDemoState();
}

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: Center(
          child: const Text(
            'Simple Dialog Demo',
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
              showDialog<String>(
                context: context,
                builder: (BuildContext context) {
                  return SimpleDialog(
                    title: const Text('Simple Dialog'),
                    contentPadding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    children: [
                      const Text('This is a simple dialog in Flutter.'),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop('Close');
                        },
                        child: const Text('Close'),
                      ),
                    ],
                  );
                },
              ).then((value) => log(value ?? "No Value Returned"));
            },
            child: const Text('Show Simple Dialog'),
          ),
        ),
      ),
    );
  }
}
