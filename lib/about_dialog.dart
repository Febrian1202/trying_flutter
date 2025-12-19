import 'package:flutter/material.dart';

class AboutDialogDemo extends StatefulWidget {
  const AboutDialogDemo({super.key});

  @override
  State<AboutDialogDemo> createState() => _AboutDialogDemoState();
}

class _AboutDialogDemoState extends State<AboutDialogDemo> {
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
              showAboutDialog(
                context: context,
                applicationName: 'Porto App',
                applicationVersion: '1.0.0',
                applicationIcon: Icon(Icons.info_outline),
                applicationLegalese: '© 2024 Porto Inc.',
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      'This is a sample application to demonstrate the About Dialog in Flutter.',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              );
            },
            child: Text('Show About Dialog'),
          ),
        ),
      ),
    );
  }
}
