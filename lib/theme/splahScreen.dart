import 'package:facebook_clone/facebook_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';

class Splahscreen extends StatefulWidget {
  const Splahscreen({super.key});

  @override
  State<Splahscreen> createState() => _SplahscreenState();
}

class _SplahscreenState extends State<Splahscreen> {
  //This code is used to create a Splash Screen in Flutter. It is the introductory screen that appears when an app is launched, typically showing a brand logo.

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => FacebookPage(),
        ), // use future.delayed to 3seconrd to navigator FacebookPage
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
                      'From',
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
                        _buildSmallIcon(Icons.facebook_outlined),
                        SizedBox(width: 8),
                        Text(
                          'Facebook',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 18,
                            letterSpacing: 1.2,
                          ),
                        ),
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
    return Icon(icon, color: Colors.blue, size: 25);
  }
}
