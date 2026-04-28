import 'package:facebook_clone/facebook_page.dart';
import 'package:facebook_clone/theme/marketplace.dart';
import 'package:facebook_clone/theme/notification.dart';
import 'package:facebook_clone/theme/profile.dart';
import 'package:flutter/material.dart' hide Notification;

// Global theme notifier - accessible throughout the app
final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int _selectedIndex = 2;

  Widget _getScreen(int index) {
    switch (index) {
      case 0:
        return const FacebookPage();
      case 1:
        return const Marketplace();
      case 2:
        return const Profile();
      case 3:
        return const Notification();
      case 4:
        return const MenuScreen();
      default:
        return const FacebookPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text("Menu"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: ListTile(
        leading: const Icon(Icons.dark_mode),
        title: const Text('Dark Mode Settings'),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DarkModeScreen()),
        ),
      ),
    );
  }
}

class DarkModeScreen extends StatelessWidget {
  const DarkModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dark Mode'),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (context, mode, _) {
          return ListView(
            padding: EdgeInsets.zero,
            children: [
              RadioListTile<ThemeMode>(
                title: const Text('On'),
                value: ThemeMode.dark,
                groupValue: mode,
                onChanged: (val) {
                  themeNotifier.value = val!;
                },
              ),
              RadioListTile<ThemeMode>(
                title: const Text('Off'),
                value: ThemeMode.light,
                groupValue: mode,
                onChanged: (val) {
                  if (val != null) {
                    themeNotifier.value = val;
                  }
                },
              ),
              RadioListTile<ThemeMode>(
                title: const Text('System'),
                subtitle: const Text('Adjust based on device settings'),
                value: ThemeMode.system,
                groupValue: mode,
                onChanged: (val) {
                  if (val != null) {
                    themeNotifier.value = val;
                  }
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
