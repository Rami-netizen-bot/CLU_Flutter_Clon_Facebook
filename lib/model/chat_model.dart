class ChatUser {
  final String id;
  final String name;
  final String avatarUrl;
  final String lastMessage;
  final String time;
  final bool isOnline;

  ChatUser({
    required this.id,
    required this.name,
    required this.avatarUrl,
    required this.lastMessage,
    required this.time,
    this.isOnline = false,
  });
}

class Message {
  final String id;
  final String text;
  final bool isSentByMe;
  final DateTime time;
  final String? fileUrl;
  final String? fileName;
  final bool isFile;

  Message({
    required this.id,
    required this.text,
    required this.isSentByMe,
    required this.time,
    this.fileUrl,
    this.fileName,
    this.isFile = false,
  });
}
