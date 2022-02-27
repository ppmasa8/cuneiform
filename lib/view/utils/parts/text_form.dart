import 'package:cuneiform/translate.dart';
import 'package:flutter/material.dart';

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
            child: const Text('Submit'),
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
