import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/theme_provider.dart';
import '../screens/chat_list_screen.dart';
import '../screens/home_page.dart';
import 'dart:async';
import 'package:flutter_svg/flutter_svg.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MainChart(),
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
                child: SvgPicture.asset(
                  'assets/icons/facebook-messenger-svgrepo-com.svg',
                  color: Colors.blue,
                  width: 80,
                  height: 80,
                ),
              ),
            ),
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: Padding(
            //     padding: EdgeInsets.only(bottom: 40),
            //     child: Column(
            //       mainAxisSize: MainAxisSize.min,
            //       // children: [
            //       //   Text(
            //       //     'From',
            //       //     style: TextStyle(
            //       //       color: Colors.blueGrey[300],
            //       //       fontSize: 16,
            //       //       fontWeight: FontWeight.w500,
            //       //       letterSpacing: 3.0,
            //       //     ),
            //       //   ),
            //         SizedBox(height: 12),
            //         // Row(
            //         //   mainAxisAlignment: MainAxisAlignment.center,
            //         //   children: [
            //         //     _buildSmallIcon(Icons.messenger_outlined),
            //         //     SizedBox(width: 8),
            //         //     Text(
            //         //       'Messenger',
            //         //       style: TextStyle(
            //         //         fontWeight: FontWeight.bold,
            //         //         color: Colors.grey,
            //         //         fontSize: 18,
            //         //         letterSpacing: 1.2,
            //         //       ),
            //         //     ),
            //         //   ],
            //         // ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

Widget _buildSmallIcon(IconData icon) {
  return Icon(icon, color: Colors.blue, size: 25);
}
