import 'package:facebook_clone/facebook_page.dart';
import 'package:facebook_clone/theme/splahScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(textTheme: GoogleFonts.hedvigLettersSerifTextTheme()),
      home: Splahscreen(),
    );
  }
}
