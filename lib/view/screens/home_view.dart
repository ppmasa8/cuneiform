import 'package:cuneiform/view/utils/parts/text_form.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Cuneiform')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TextForm(),
            SizedBox(
                width: 300,
                height: 350,
                child: Image.network(
                    'https://www.researchgate.net/profile/Wim-Peters/publication/251774462/figure/fig1/AS:298093233885205@1448082373839/Example-of-Sumerian-cuneiform.png')),
          ],
        ),
      ),
    );
  }
}
