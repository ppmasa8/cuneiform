import 'package:cuneiform/view/utils/parts/text_form.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text('Cuneiform')
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TextForm(),
            Container(
              width: 300,
              height: 350,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}