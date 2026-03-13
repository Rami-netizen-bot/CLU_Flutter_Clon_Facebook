import 'package:facebook_clone/model/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FacebookPage extends StatefulWidget {
  const FacebookPage({super.key});

  @override
  State<FacebookPage> createState() => _FacebookPageState();
}

class _FacebookPageState extends State<FacebookPage> {
  int _selectIndex = 0;
  final List<_NavItem> _items = [
    _NavItem(icon: Icons.home_rounded, label: 'Home'),
    _NavItem(icon: Icons.storefront_outlined, label: 'Marketplace'),
    _NavItem(icon: Icons.account_circle_outlined, label: 'Profile'),
    _NavItem(icon: Icons.notifications_none_outlined, label: 'Notifications'),
    _NavItem(icon: Icons.menu_rounded, label: 'Menu'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   title: Text(
      //     "Facebook",
      //     style: TextStyle(
      //       fontSize: 24,
      //       color: Colors.blue,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Facebook',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: SvgPicture.asset(
                            'assets/icons/search-svgrepo-com.svg',
                            width: 22,
                            height: 22,
                            colorFilter: ColorFilter.mode(
                              Colors.black,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: SvgPicture.asset(
                            'assets/icons/facebook-messenger-svgrepo-com.svg',
                            width: 20,
                            height: 20,
                            colorFilter: ColorFilter.mode(
                              Colors.black,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Divider(thickness: 1, color: Colors.grey[200]),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 6),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        _actionButton(
                          icon: Icons.video_call_rounded,
                          label: 'Reel',
                          color: Colors.red,
                        ),
                        _actionButton(
                          icon: Icons.video_camera_front_rounded,
                          label: 'Room',
                          color: Colors.purple,
                        ),
                        _actionButton(
                          icon: Icons.group_add_rounded,
                          label: 'Group',
                          color: Colors.blue,
                        ),
                        _actionButton(
                          icon: Icons.live_tv_rounded,
                          label: 'Live',
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(thickness: 1, color: Colors.grey[200]),
              ],
            ),
            Container(
              height: 100,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/images/Profile1.jpg"),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(),
                        color: Colors.white,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "What's on your mind?",
                            hintStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Icon(Icons.camera_alt, color: Colors.black, size: 30),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 10, top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Stories header — FIX: added right: 20 so "See more" isn't clipped
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Stories",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        Text("See more"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: userInfo.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final user = userInfo[index];
                        return AspectRatio(
                          aspectRatio: 1.6 / 2,
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(user.storyImage),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage(user.profileImage),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    user.name,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 40),
                  for (FacebookUser user in userInfo) userFeed(user),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.grey[200]!, width: 1)),
        ),
        child: SafeArea(
          child: SizedBox(
            height: 60,
            child: Row(
              children: List.generate(_items.length, (index) {
                final item = _items[index];
                final isSelected = index == _selectIndex;
                return Expanded(
                  child: GestureDetector(
                    // onTap: () => Set(() => _selectIndex = index),
                    behavior: HitTestBehavior.opaque,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (isSelected)
                          Container(
                            height: 3,
                            width: 36,
                            margin: EdgeInsets.only(bottom: 6),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                        Icon(
                          item.icon,
                          color: isSelected ? Colors.blue : Colors.grey[700],
                          size: 26,
                        ),
                        SizedBox(height: 3),
                        Text(
                          item.label,
                          style: TextStyle(
                            fontSize: 10,
                            color: isSelected ? Colors.blue : Colors.grey[700],
                            fontWeight: isSelected
                                ? FontWeight.w600
                                : FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }

  Widget userFeed(FacebookUser user) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(user.profileImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        user.time,
                        style: const TextStyle(
                          color: Colors.black45,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_horiz,
                  size: 30,
                  color: Colors.black45,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            user.status,
            style: const TextStyle(fontSize: 15, color: Colors.black87),
          ),
          const SizedBox(height: 10),
          if (user.image.isNotEmpty)
            Container(
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(user.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          const SizedBox(height: 10),
          Row(
            children: [
              likeAndLove(Colors.blue, Icons.thumb_up),
              Transform.translate(
                offset: const Offset(-5, 0),
                child: likeAndLove(Colors.red, Icons.favorite),
              ),
              const SizedBox(width: 5),
              Text(user.like, style: const TextStyle(fontSize: 16)),
              const Spacer(),
              // FIX: comment field now holds only the count; " Comment" appended here
              Text(
                "${user.comment} Comment",
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(width: 5),
              const SizedBox(width: 4),
              Text("${user.Shear} Share", style: const TextStyle(fontSize: 16)),
            ],
          ),
          const Divider(height: 30, color: Colors.black12),
        ],
      ),
    );
  }

  Container likeAndLove(Color color, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: Center(child: Icon(icon, size: 12, color: Colors.white)),
    );
  }
}

Widget _actionButton({
  required IconData icon,
  required String label, // typo fixed
  required Color color,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 6),
    child: OutlinedButton.icon(
      onPressed: () {},
      icon: Icon(icon, color: color, size: 18), // added
      label: Text(
        label,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 13,
        ),
      ),
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: Colors.grey[300]!),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
    ),
  );
}

class _NavItem {
  final IconData icon;
  final String label;
  const _NavItem({required this.icon, required this.label});
}
