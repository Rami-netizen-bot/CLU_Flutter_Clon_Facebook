import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:facebook_clone/model/model.dart';

class Notification extends StatefulWidget {
  const Notification({super.key});

  @override
  State<Notification> createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(),
            Expanded(
              child: ListView.builder(
                itemCount: notification.length,
                itemBuilder: (context, idex) {
                  return _buildNotificationTile(notification[idex], context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildHeader() {
  return Padding(
    padding: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Notification',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

Widget _buildNotificationTile(NotificationModel model, BuildContext context) {
  final theme = Theme.of(context);
  final isDark = theme.brightness == Brightness.dark;
  return Container(
    color: model.isUnread ? Colors.blue.withOpacity(0.06) : Colors.transparent,
    child: ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(model.profilePic),
      ),
      title: RichText(
        text: TextSpan(
          style: TextStyle(color: Colors.black, fontSize: 15),
          children: [
            TextSpan(
              text: '${model.userName}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),
            ),
            TextSpan(
              text: model.content,
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),
            ),
          ],
        ),
      ),
      subtitle: Text(
        model.timeAgo,
        style: TextStyle(color: model.isUnread ? Colors.blue : Colors.grey),
      ),
      trailing: Icon(Icons.more_horiz),
    ),
  );
}
