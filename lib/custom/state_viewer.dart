import 'package:flutter/material.dart';
import 'package:porto/custom/on_off_navigator.dart';
import 'package:porto/custom/states.dart';

class StateViewer extends StatefulWidget {
  final void Function(States state)? onStateChanged;
  final States initialState;

  const StateViewer({
    super.key,
    this.onStateChanged,
    required this.initialState,
  });

  @override
  State<StateViewer> createState() => _StateViewerState();
}

class _StateViewerState extends State<StateViewer> {
  late States _state;

  @override
  void initState() {
    super.initState();
    _state = widget.initialState;
  }

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _state = States.values[(_state.index + 1) % States.values.length];
          });
          if (widget.onStateChanged != null) {
            widget.onStateChanged!(_state);
          }
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(22.5),
            boxShadow: [
              BoxShadow(
                // ignore: deprecated_member_use
                color: Colors.black.withOpacity(0.5),
                blurRadius: 15,
              ),
            ],
          ),
          child: Row(
            children: [
              OnOffIndicatorr(
                onColor: Colors.lightGreen,
                isOn: _state == States.safe,
              ),
              const SizedBox(width: 5),
              OnOffIndicatorr(
                onColor: Colors.amber,
                isOn: _state == States.warning,
              ),
              const SizedBox(width: 5),
              OnOffIndicatorr(
                onColor: Colors.red,
                isOn: _state == States.danger,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
