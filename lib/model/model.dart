class FacebookUser {
  String name;
  String image;
  String status;
  String profileImage;
  bool isOnline;
  String like;
  String comment;
  String storyImage;
  String time;
  String Shear;
  FacebookUser({
    required this.name,
    required this.comment,
    required this.image,
    required this.isOnline,
    required this.like,
    required this.profileImage,
    required this.status,
    required this.storyImage,
    required this.time,
    required this.Shear,
  });
}

List<FacebookUser> userInfo = [
  FacebookUser(
    name: "Luk Leanghoy",
    comment: "16",
    image: "assets/images/Post1.jpg",
    isOnline: false,
    like: "120K",
    profileImage: "assets/images/Profile1.jpg",
    status:
        "It is a long established fact that a reader will be distracted by the readable content of a page",
    storyImage: "assets/images/Story1.jpg",
    time: "2 Week Ago",
    Shear: "4",
  ),
  FacebookUser(
    name: "BoraDeth",
    comment: "2",
    image: "assets/images/Post2.jpg",
    isOnline: false,
    like: "12",
    profileImage: "assets/images/Profile2.jpg",
    status:
        "It is a long established fact that a reader will be distracted by the readable content of a page",
    storyImage: "assets/images/Story2.jpg",
    time: "2 Day Ago",
    Shear: "5",
  ),
  FacebookUser(
    name: "Sovann Vathana Tai",
    comment: "0",
    image: "assets/images/Post4.jpg",
    isOnline: false,
    like: "783",
    profileImage: "assets/images/Profile4.jpg",
    status:
        "It is a long established fact that a reader will be distracted by the readable content of a page",
    storyImage: "assets/images/Story4.jpg",
    time: "2 minute ago",
    Shear: "1",
  ),
  FacebookUser(
    name: "Rami",
    comment: "11 ",
    image: "assets/images/Post3.jpg",
    isOnline: false,
    like: "120K",
    profileImage: "assets/images/Profile3.jpg",
    status:
        "It is a long established fact that a reader will be distracted by the readable content of a page",
    storyImage: "assets/images/Story3.jpg",
    time: "2 Week Ago",
    Shear: "6",
  ),
  FacebookUser(
    name: "ទូច​ ម៉េងហួត",
    comment: "13",
    image: "assets/images/Post5.jpg",
    isOnline: false,
    like: "49",
    profileImage: "assets/images/Profile5.jpg",
    status:
        "It is a long established fact that a reader will be distracted by the readable content of a page",
    storyImage: "assets/images/Story5.jpg",
    time: "2 Month Ago",
    Shear: "2",
  ),
  FacebookUser(
    name: "កាមទេព ស្នេហ៌",
    comment: "11 Comment",
    image: "assets/images/Post6.jpg",
    isOnline: false,
    like: "120K",
    profileImage: "assets/images/Profile6.jpg",
    status:
        "It is a long established fact that a reader will be distracted by the readable content of a page",
    storyImage: "assets/images/Story6.jpg",
    time: "2 Week Ago",
    Shear: "5",
  ),
  FacebookUser(
    name: "Bav Sophea",
    comment: "1 Comment",
    image: "assets/images/Post3.jpg",
    isOnline: false,
    like: "120K",
    profileImage: "assets/images/Profile3.jpg",
    status:
        "It is a long established fact that a reader will be distracted by the readable content of a page",
    storyImage: "assets/images/Story6.jpg",
    time: "2 Week Ago",
    Shear: "",
  ),
];

class Product {
  final String id;
  final String title;
  final double price;
  final String location;
  final String image;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.location,
    required this.image,
  });
}

class NotificationModel {
  final String userName;
  final String profilePic;
  final String content;
  final String timeAgo;
  final bool isUnread;
  final String? groupicon;

  NotificationModel({
    required this.userName,
    required this.profilePic,
    required this.content,
    required this.timeAgo,
    this.isUnread = false,
    this.groupicon,
  });
}

final List<NotificationModel> notification = [
  NotificationModel(
    userName: 'Monkey D. Luffy',
    profilePic: 'assets/images/Luffy.jpg',
    content: 'I’m going to be the King of the Pirates!',
    timeAgo: '1 minute ago',
    isUnread: true,
  ),
  NotificationModel(
    userName: 'Kakashi Hatake',
    profilePic: 'assets/images/Kakashi.webp',
    content: 'Sorry I’m late, I got lost on the path of life.',
    timeAgo: '5 minutes ago',
    isUnread: true,
  ),
  NotificationModel(
    userName: 'Zenitsu Agatsuma',
    profilePic: 'assets/images/Zenitzu.webp',
    content: 'PLEASE PROTECT ME! I heard a scary noise!',
    timeAgo: '12 minutes ago',
    isUnread: true,
  ),
  NotificationModel(
    userName: 'Levi Ackerman',
    profilePic: 'assets/images/Levi.jpg',
    content: 'This place is filthy. Start cleaning immediately.',
    timeAgo: '45 minutes ago',
    isUnread: true,
  ),
  NotificationModel(
    userName: 'Satoru Gojo',
    profilePic: 'assets/images/Gojo.webp',
    content: 'Don’t worry, I’m the strongest. ',
    timeAgo: '1 hour ago',
    isUnread: false,
  ),
  NotificationModel(
    userName: 'Kirito',
    profilePic: 'assets/images/Kirito.jpg',
    content: 'Just cleared the floor boss. Anyone for a raid?',
    timeAgo: '2 hours ago',
    isUnread: true,
  ),
  NotificationModel(
    userName: 'Nezuko Kamado',
    profilePic: 'assets/images/Netzuko.jpg',
    content: 'Mmph! Mmph mmph! ',
    timeAgo: '4 hours ago',
    isUnread: false,
  ),
  NotificationModel(
    userName: 'Killua Zoldyck',
    profilePic: 'assets/images/Killua.webp',
    content: 'Wanna go get some chocolate robots? ',
    timeAgo: '6 hours ago',
    isUnread: false,
  ),
  NotificationModel(
    userName: 'Erza Scarlet',
    profilePic: 'assets/images/Erza.webp',
    content: 'Who ate my strawberry cheesecake?! ',
    timeAgo: 'Yesterday',
    isUnread: false,
  ),
  NotificationModel(
    userName: 'Edward Elric',
    profilePic: 'assets/images/Edward.jpg',
    content: 'WHO ARE YOU CALLING A SHORT PIPSQUEAK?!',
    timeAgo: '2 days ago',
    isUnread: false,
  ),
];
