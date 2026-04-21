// import 'package:flutter/material.dart';
// import 'package:file_picker/file_picker.dart';
// import '../model/chat_model.dart';
// import '../data/dummy_data.dart';

// void main(List<String> args) {}

// class ChatScreen extends StatefulWidget {
//   final ChatUser user;
//   const ChatScreen({required this.user});

//   @override
//   State<ChatScreen> createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   final TextEditingController _controller = TextEditingController();
//   final ScrollController _scrollController = ScrollController();
//   List<Message> _message = List.filled(dummyMessages);
//   void _sendMessage() {
//     if (_controller.text.trim().isEmpty) return;
//     setState(() {
//       _message.add(
//         Message(
//           id: DateTime.now().toString(),
//           text: _controller.text.trim(),
//           isSentByMe: true,
//           time: DateTime.now(),
//         ),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leadingWidth: 30,
//         title: Row(
//           children: [
//             CircleAvatar(radius: 20, backgroundImage: NetworkImage('')),
//             SizedBox(width: 10),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start, 
//               children: [
//                 Text(
//                   widget.user.name,
//                   style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   widget.user.isOnline ? 'Active Now' : 'Offline',
//                   style: TextStyle(
//                     fontSize: 11,
//                     color: widget.user.isOnline ? Colors.green : Colors.grey,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//         actions: [
//           IconButton(onPressed: () {}, icon: Icon(Icons.phone_outlined)),
//           IconButton(onPressed: () {}, icon: Icon(Icons.videocam_outlined)),
//         ],
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Row(
//               //message
//               // mainAxisAlignment: msg,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
