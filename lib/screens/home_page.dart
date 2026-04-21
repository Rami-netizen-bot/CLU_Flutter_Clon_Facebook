import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/theme_provider.dart';
import '../screens/chat_list_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          Consumer<ThemeProvider>(
            builder: (context, themeProvider, _) => IconButton(
              onPressed: themeProvider.toggleTheme, // Calls your method
              icon: Icon(
                // Swaps the icon based on the current theme state
                themeProvider.isDark ? Icons.light_mode : Icons.dark_mode,
              ),
            ),
          ),
        ],
      ),
      // body: Center(
      //   child: ElevatedButton.icon(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (_)=> ))}, ),
      // ),
    );
  }
}
