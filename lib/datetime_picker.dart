import 'package:flutter/material.dart';

class DateTimePickerDemo extends StatefulWidget {
  const DateTimePickerDemo({super.key});

  @override
  State<DateTimePickerDemo> createState() => _DateTimePickerDemoState();
}

class _DateTimePickerDemoState extends State<DateTimePickerDemo> {
  DateTime? selectedDateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: Center(
          child: Text(
            'DateTime Picker Demo',
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectedDateTime != null
                  ? 'Selected: $selectedDateTime'
                  : 'DateTime Picker Demo Content Here',
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog<DateTime>(
                  context: context,
                  builder: (context) => DatePickerDialog(
                    firstDate: DateTime.now().subtract(Duration(days: 30)),
                    lastDate: DateTime.now(),
                  ),
                ).then((value) {
                  setState(() {
                    if (value != null) {
                      if (selectedDateTime == null) {
                        selectedDateTime = value;
                      } else {
                        selectedDateTime = selectedDateTime!.copyWith(
                          year: value.year,
                          month: value.month,
                          day: value.day,
                        );
                      }
                    }
                  });
                });
              },
              child: Text('Pick Date'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog<TimeOfDay>(
                  context: context,
                  builder: (context) =>
                      TimePickerDialog(initialTime: TimeOfDay.now()),
                ).then((value) {
                  if (value != null) {
                    setState(() {
                      if (selectedDateTime == null) {
                        selectedDateTime = DateTime.now().copyWith(
                          hour: value.hour,
                          minute: value.minute,
                        );
                      } else {
                        selectedDateTime = selectedDateTime!.copyWith(
                          hour: value.hour,
                          minute: value.minute,
                        );
                      }
                    });
                  }
                });
              },
              child: Text('Pick Time'),
            ),
          ],
        ),
      ),
    );
  }
}
