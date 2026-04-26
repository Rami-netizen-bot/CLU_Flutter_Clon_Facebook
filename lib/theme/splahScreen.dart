import 'package:facebook_clone/facebook_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: Splahscreen()),
  );
}

class Splahscreen extends StatefulWidget {
  const Splahscreen({super.key});

  @override
  State<Splahscreen> createState() => _SplahscreenState();
}

class _SplahscreenState extends State<Splahscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => FacebookPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Icon(Icons.facebook, color: Colors.blue, size: 80),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Facebook',
                      style: TextStyle(
                        color: Colors.blueGrey[300],
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 3.0,
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildSmallIcon(Icons.facebook),
                        SizedBox(width: 15),
                        _buildSmallIcon(Icons.messenger_outline),
                        SizedBox(width: 15),
                        _buildSmallIcon(Icons.camera_alt_outlined),
                        SizedBox(width: 15),
                        _buildSmallIcon(Icons.all_inclusive),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSmallIcon(IconData icon) {
    return Icon(icon, color: Colors.grey, size: 20);
  }
}
