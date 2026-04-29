import 'package:flutter/material.dart';

void main() {
  runApp(const FacebookCloneApp());
}

class FacebookCloneApp extends StatelessWidget {
  const FacebookCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const MainNavigationScreen(),
    );
  }
}

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // 5 tabs matching your navigation bar image
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: [
          const Center(child: Text("Home")),
          const Center(child: Text("Marketplace")),
          const Center(child: Text("Profile")),
          const NotificationScreen(), // The screen you asked for
          const Center(child: Text("Menu")),
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white, // Change to 0xFF18191a for Dark Mode
            border: Border(
              top: BorderSide(color: Colors.grey.withOpacity(0.2), width: 0.5),
            ),
          ),
          child: SafeArea(
            child: TabBar(
              controller: _tabController,
              dividerColor: Colors.transparent,
              indicator: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.blueAccent, width: 3.0),
                ),
              ),
              labelColor: Colors.blueAccent,
              unselectedLabelColor: Colors.grey,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: const [
                Tab(icon: Icon(Icons.home, size: 28)),
                Tab(icon: Icon(Icons.storefront, size: 28)),
                Tab(icon: Icon(Icons.account_circle_outlined, size: 28)),
                Tab(icon: Icon(Icons.notifications_none, size: 28)),
                Tab(icon: Icon(Icons.menu, size: 28)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          "Notifications",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        actions: [
          _buildCircleAction(Icons.person),
          const SizedBox(width: 8),
          _buildCircleAction(Icons.search),
          const SizedBox(width: 16),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          bool isUnread = index < 2;
          return Container(
            color: isUnread
                ? Colors.blue.withOpacity(0.05)
                : Colors.transparent,
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 4,
              ),
              leading: const CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage('https://i.pravatar.cc/150'),
              ),
              title: RichText(
                text: TextSpan(
                  style: const TextStyle(color: Colors.black, fontSize: 14),
                  children: [
                    TextSpan(
                      text: "Friend $index ",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(text: "reacted to your photo."),
                  ],
                ),
              ),
              subtitle: const Text("Just now"),
              trailing: const Icon(Icons.more_horiz),
            ),
          );
        },
      ),
    );
  }

  Widget _buildCircleAction(IconData icon) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: Colors.black, size: 22),
    );
  }
}
