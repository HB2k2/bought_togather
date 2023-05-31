import 'package:flutter/material.dart';
import 'inputpage.dart';
//import 'rough .dart';

void main() => runApp(pdp());

class pdp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: const Color(0xFF0A0E21),
          scaffoldBackgroundColor: const Color(0xFF0A0E21)),
      home: InputPage(),
    );
  }
}
