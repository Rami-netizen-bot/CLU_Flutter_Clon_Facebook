// import 'dart:async';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(Test());
// }

// class Test extends StatefulWidget {
//   @override
//   _TestState createState() => _TestState();
// }

// class _TestState extends State<Test> {
//   // @override
//   // void initState() {
//   //   super.initState();
//   //   // Replicating the 3-second timer for navigation
//   //   Future.delayed(Duration(seconds: 3), () {
//   //     if (mounted) {
//   //       Navigator.pushReplacement(
//   //         context,
//   //         MaterialPageRoute(builder: (context) => sp()),
//   //       );
//   //     }
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF18191a), // Dark theme matching the image
//       body: Stack(
//         children: [
//           // Central Facebook Logo
//           Center(
//             child: Container(
//               width: 80,
//               height: 80,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.blue[600], // Adjust color to match Facebook blue
//               ),
//               child: Icon(
//                 Icons.facebook,
//                 size: 90, // Icon slightly larger than container for effect
//                 color: Colors.white,
//               ),
//             ),
//           ),

//           // "from Meta" Footer at the bottom
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Padding(
//               padding: const EdgeInsets.only(bottom: 40),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     "from",
//                     style: TextStyle(color: Colors.grey[600], fontSize: 14),
//                   ),
//                   const SizedBox(height: 8),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       // Replicating the Meta infinity icon
//                       Icon(Icons.all_inclusive, color: Colors.white, size: 24),
//                       const SizedBox(width: 5),
//                       Text(
//                         "Meta",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
