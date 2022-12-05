import 'package:flutter/material.dart';
import 'inputpage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(const Frontlayout());
}

class Frontlayout extends StatefulWidget {
  const Frontlayout({ key}) : super(key: key);

  @override
  State<Frontlayout> createState() => _FrontlayoutState();
}

class _FrontlayoutState extends State<Frontlayout> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF278EEB),
        scaffoldBackgroundColor: Color(0xFF278EEB),
      ),
      home: Inputpage(),
    );
  }
}



