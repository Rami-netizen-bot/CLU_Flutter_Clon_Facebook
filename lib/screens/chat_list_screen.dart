import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/dummy_data.dart';
import '../provider/theme_provider.dart';
import 'chat_screen.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          Consumer<ThemeProvider>(
            builder: (context, themeProvider, _) => IconButton(
              onPressed: themeProvider.toggleTheme,
              icon: Icon(
                themeProvider.isDark ? Icons.light_mode : Icons.dark_mode,
              ),
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.edit_outlined)),
        ],
      ),
      body: Column(
        children: [
          //Search Bar
          Padding(
            padding: EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: theme.colorScheme.surface,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 0),
              ),
            ),
          ),
          SizedBox(
            height: 90,
            child: ListView.builder(
              itemBuilder: (context, index) {
                if (index == 0) {
                  return _buildYourStory(context);
                }
                final user = dummyChats[index - 1];
                return _buildStoryAvatar(user);
              },
            ),
          ),
          Divider(height: 1),
        ],
      ),
    );
  }
}

Widget _buildStoryAvatar(user) {
  return Padding(
    padding: EdgeInsets.only(right: 12),
    child: Column(
      children: [
        CircleAvatar(radius: 28, backgroundImage: (user.avatarUrl)),
        SizedBox(height: 6),
        Text(user.name.split('')[0], style: TextStyle(fontSize: 11)),
      ],
    ),
  );
}

Widget _buildYourStory(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(right: 12),
    child: Column(
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey[300]!, width: 1),
          ),
          child: Icon(Icons.add, color: Color(0xFFE91E63), size: 28),
        ),
        SizedBox(height: 6),
        Text('Your Story', style: TextStyle(fontSize: 11)),
      ],
    ),
  );
}
