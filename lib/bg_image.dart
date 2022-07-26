import 'package:flutter/material.dart';
import 'package:freecode_1/main.dart';
import 'package:freecode_1/pages/homepage.dart';

void main() {
  runApp(HomePage());
}

class BgImage extends StatelessWidget {
  const BgImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/bg.avif',
      fit: BoxFit.cover,
    );
  }
}
