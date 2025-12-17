import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  TextEditingController textEditingController = TextEditingController(
    text: 'value',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: Center(
          child: const Text(
            'Padding Widget',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: textEditingController,
              // obscureText: true,
              // obscuringCharacter: '-',
              style: const TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
              cursorColor: Colors.red,
              inputFormatters: [
                TextInputFormatter.withFunction(
                  (oldValue, newValue) =>
                      newValue.copyWith(text: newValue.text.toUpperCase()),
                ),
              ],
              onChanged: (value) => setState(() {}),
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(
                  color: Colors.red,
                  fontStyle: FontStyle.italic,
                ),
                // labelText: 'Masukkan Password',
                labelStyle: TextStyle(color: Colors.red.shade900),
                floatingLabelAlignment: FloatingLabelAlignment.center,
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                label: Container(
                  padding: EdgeInsets.all(3),
                  color: Colors.red.shade100,
                  child: Text(
                    'Input Text',
                    style: TextStyle(
                      color: Colors.red.shade800,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                counterText: '${textEditingController.text.length}',
                counterStyle: TextStyle(
                  color: Colors.red,
                  fontStyle: FontStyle.normal,
                ),
                helperText: 'ini Adalah Helper Text ',
                helperStyle: TextStyle(
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                ),
                // errorText: 'Ini adalah Error Text',
                icon: Container(
                  width: 20,
                  height: 20,
                  color: Colors.blue.shade900,
                ),
                prefixIcon: Icon(MdiIcons.facebook),
                prefixIconColor: Colors.red.shade900,
                suffixIcon: Icon(Icons.coffee),
                suffixIconColor: Colors.brown,
                filled: true,
                fillColor: Colors.grey,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple, width: 2),
                  borderRadius: BorderRadius.circular(4),
                ),
                focusedBorder: OutlineInputBorder(
                  gapPadding: 5,
                  borderSide: BorderSide(color: Colors.green, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                // labelStyle: ,
              ),
              // enabled: false,
            ),
            SizedBox(height: 20),
            TextField(),
            Text(
              textEditingController.text,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
