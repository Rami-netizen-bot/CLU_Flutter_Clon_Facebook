import 'package:facebook_clone/model/model.dart';
import 'package:flutter/material.dart';

class FacebookPage extends StatefulWidget {
  const FacebookPage({super.key});

  @override
  State<FacebookPage> createState() => _FacebookPageState();
}

class _FacebookPageState extends State<FacebookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: 100,
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
