import 'package:cuneiform/translate.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextForm extends StatefulWidget {
  const TextForm({Key? key}) : super(key: key);

  @override
  _TextFormState createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  final myFocusNode = FocusNode();
  final textController = TextEditingController();
  String plainText = "";
  String text = "";

  void _updatePlainText() {
    setState(() {
      plainText = textController.text;
      print(plainText);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(60.0),
      child: Column(
        children: [
          TextField(
            focusNode: myFocusNode,
            controller: textController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Please input this form',
            ),
            onChanged: (value) {
              text = value;
            },
          ),
          TextButton(
            child: Text('Submit',
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                )),
            onPressed: _updatePlainText,
          ),
          Text(
            Translate.Execute(plainText),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
