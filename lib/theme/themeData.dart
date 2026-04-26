import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class Themedata extends StatefulWidget {
  const Themedata({super.key});

  @override
  State<Themedata> createState() => _ThemedataState();
}

class _ThemedataState extends State<Themedata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(16),child: Text("Theme Data"),),
        ],
      ),
    );
  }
}