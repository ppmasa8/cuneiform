import 'package:cuneiform/const.dart';
import 'package:cuneiform/view/utils/parts/ad_manager.dart';
import 'package:cuneiform/view/utils/parts/text_form.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int width = MediaQuery.of(context).size.width.floor();
    int height = (MediaQuery.of(context).size.height * 0.1).floor();

    final SizedBox adContainer = SizedBox(
        height: height.toDouble(),
        width: width.toDouble(),
        child: Center(child: AdManager().getBannerAdWidget(width, height)));

    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('Cuneiform',
              style: GoogleFonts.dancingScript(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 30,
              )),
          backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TextForm(),
            SizedBox(width: 300, height: 350, child: Image.network(imgUrl)),
            adContainer
          ],
        ),
      ),
    );
  }
}
