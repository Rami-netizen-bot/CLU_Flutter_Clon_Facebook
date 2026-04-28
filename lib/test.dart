// import 'package:flutter/material.dart';

// class MainNavigationWrapper extends StatefulWidget {
//   const MainNavigationWrapper({super.key});

//   @override
//   State<MainNavigationWrapper> createState() => _MainNavigationWrapperState();
// }

// class _MainNavigationWrapperState extends State<MainNavigationWrapper> {
//   int _selectedIndex = 2; // Default to Profile (the 3rd icon)

//   // This list holds the actual screens we've built
// //   final List<Widget> _screens = [
// //     const Center(child: Text("Home Screen")),         // Index 0
// //     const Center(child: Text("Marketplace")),       // Index 1
// //     const (),                             // Index 2 (Your Profile)
// //     const Center(child: Text("Notifications")),     // Index 3
// //     const MenuScreen(),                              // Index 4 (Your Menu)
// //   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: IndexedStack(
//         index: _selectedIndex,
//         children: _screens,
//       ),
//       bottomNavigationBar: Container(
//         decoration: BoxDecoration(
//           border: Border(top: BorderSide(color: Colors.grey.shade300, width: 0.5)),
//         ),
//         child: BottomNavigationBar(
//           currentIndex: _selectedIndex,
//           onTap: (index) {
//             setState(() {
//               _selectedIndex = index;
//             });
//           },
//           type: BottomNavigationBarType.fixed,
//           selectedItemColor: const Color(0xFF1877F2), // Facebook Blue
//           unselectedItemColor: Colors.grey,
//           showUnselectedLabels: true,
//           selectedLabelStyle: const TextStyle(fontSize: 12),
//           unselectedLabelStyle: const TextStyle(fontSize: 12),
//           items: [
//             const BottomNavigationBarItem(icon: Icon(Icons.home_outlined), activeIcon: Icon(Icons.home), label: "Home"),
//             const BottomNavigationBarItem(icon: Icon(Icons.storefront_outlined), activeIcon: Icon(Icons.storefront), label: "Marketplace"),
//             const BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), activeIcon: Icon(Icons.account_circle), label: "Profile"),
//             const BottomNavigationBarItem(icon: Icon(Icons.notifications_none), activeIcon: Icon(Icons.notifications), label: "Notifications"),
//             // Menu Icon (matches your screenshot image_b22997.png)
//             const BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
//           ],
//         ),
//       ),
//     );
//   }
// }

//   return MaterialApp(home: Splahscreen(), debugShowCheckedModeBanner: false);