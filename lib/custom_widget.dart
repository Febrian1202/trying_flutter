import 'package:flutter/material.dart';
// import 'package:porto/custom/on_off_navigator.dart';
import 'package:porto/custom/state_viewer.dart';
import 'package:porto/custom/states.dart';

class CustomWidgetDemo extends StatefulWidget {
  final void Function(States)? onStateChanged;
  const CustomWidgetDemo({super.key, this.onStateChanged});

  @override
  State<CustomWidgetDemo> createState() => _CustomWidgetDemoState();
}

class _CustomWidgetDemoState extends State<CustomWidgetDemo> {
  States _state = States.safe;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_state.toString()),
            const SizedBox(height: 20),
            StateViewer(
              initialState: _state,
              onStateChanged: (state) => setState(() {
                _state = state;
              }),
            ),
          ],
        ),
      ),
    );
  }
}
