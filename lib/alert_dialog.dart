import 'dart:developer';

import 'package:flutter/material.dart';

class AlertDialogDemo extends StatefulWidget {
  const AlertDialogDemo({super.key});

  @override
  State<AlertDialogDemo> createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: Center(
          child: const Text(
            'Alert Dialog Demo',
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
                  return AlertDialog(
                    title: const Text('Alert Dialog'),
                    content: const Text('This is an alert dialog in Flutter.'),
                    icon: const Icon(Icons.warning_amber_rounded),
                    backgroundColor: Colors.amber.shade200,
                    actionsAlignment: MainAxisAlignment.center,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop('OK');
                        },
                        child: const Text('OK'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop('Cancel');
                        },
                        child: const Text('Cancel'),
                      ),
                    ],
                  );
                },
              ).then((value) => log(value ?? "No Value Returned"));
            },
            child: const Text('Show Alert Dialog'),
          ),
        ),
      ),
    );
  }
}
