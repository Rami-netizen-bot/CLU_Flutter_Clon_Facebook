import '../model/chat_model.dart';

final List<ChatUser> dummyChats = [
  ChatUser(
    id: '1',
    name: 'Ramy Man',
    avatarUrl: 'https://i.pravatar.cc/150?img=1',
    lastMessage: 'How are you',
    time: '1.00',
    isOnline: true,
  ),
  ChatUser(
    id: '2',
    name: 'Ramy Man',
    avatarUrl: 'https://i.pravatar.cc/150?img=1',
    lastMessage: 'How are you',
    time: '1.00',
    isOnline: true,
  ),
  ChatUser(
    id: '3',
    name: 'Ramy Man',
    avatarUrl: 'https://i.pravatar.cc/150?img=1',
    lastMessage: 'How are you',
    time: '1.00',
    isOnline: true,
  ),
  ChatUser(
    id: '4',
    name: 'Ramy Man',
    avatarUrl: 'https://i.pravatar.cc/150?img=1',
    lastMessage: 'How are you',
    time: '1.00',
    isOnline: true,
  ),
  ChatUser(
    id: '5',
    name: 'Ramy Man',
    avatarUrl: 'https://i.pravatar.cc/150?img=1',
    lastMessage: 'How are you',
    time: '1.00',
    isOnline: true,
  ),
];

final List<Message> dummyMessages = [
  Message(
    id: '1',
    text: 'Lorem23',
    isSentByMe: false,
    time: DateTime.now().subtract(Duration(minutes: 30)),
  ),
  Message(
    id: '2',
    text: 'Lorem23',
    isSentByMe: false,
    time: DateTime.now().subtract(Duration(minutes: 29)),
  ),
  Message(
    id: '3',
    text: 'Lorem23',
    isSentByMe: false,
    time: DateTime.now().subtract(Duration(minutes: 28)),
  ),
  Message(
    id: '4',
    text: 'Lorem23',
    isSentByMe: false,
    time: DateTime.now().subtract(Duration(minutes: 27)),
  ),
  Message(
    id: '5',
    text: 'Lorem23',
    isSentByMe: false,
    time: DateTime.now().subtract(Duration(minutes: 27)),
  ),
];
