import 'package:flutter/material.dart';

class TextForm extends StatefulWidget {
  const TextForm({Key? key}) : super(key: key);

  @override
  _TextFormState createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  @override
  Widget build(BuildContext context) {
    final formState = GlobalKey<FormState>();

    return SingleChildScrollView(
      padding: const EdgeInsets.all(60.0),
      key: formState,
      child: Column(
        children: [
          TextFormField(
            autofocus: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Please input this form',
            ),
            onFieldSubmitted: (value) {
              print(value);
            },
            onSaved: (value) {},
          ),
          TextButton(
            child: const Text('Submit'),
            // submitした時の処理
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
