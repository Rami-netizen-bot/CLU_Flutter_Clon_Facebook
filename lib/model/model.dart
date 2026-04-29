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
  final String imgUrl;
  final String title;
  final String price;
  Product({required this.imgUrl, required this.title, required this.price});
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
    userName: 'Luk Leanghoy',
    profilePic: 'assets/images/Profile2.jpg',
    content: 'Am I Back With Amazing Talent',
    timeAgo: '3 hour',
    isUnread: true,
  ),
  NotificationModel(
    userName: 'Touch Vottey Ratana',
    profilePic: 'assets/images/Profile2.jpg',
    content: 'Fresh with Foresh',
    timeAgo: '28 Minutes Ago',
    isUnread: true,
  ),
  NotificationModel(
    userName: 'Dara Vottey ',
    profilePic: 'assets/images/Profile2.jpg',
    content: 'Shear with Content',
    timeAgo: '28 Minutes Ago',
    isUnread: true,
  ),
  NotificationModel(
    userName: 'Dara Vottey ',
    profilePic: 'assets/images/Profile2.jpg',
    content: 'Shear with Content',
    timeAgo: '28 Minutes Ago',
    isUnread: true,
  ),
  NotificationModel(
    userName: 'Dara Vottey ',
    profilePic: 'assets/images/Profile2.jpg',
    content: 'Shear with Content',
    timeAgo: '28 Minutes Ago',
    isUnread: false,
  ),
];
