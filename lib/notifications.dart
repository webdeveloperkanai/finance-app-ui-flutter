import 'package:flutter/material.dart';
import 'package:icofont_flutter/icofont_flutter.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
        backgroundColor: const Color.fromARGB(235, 145, 3, 3),
        elevation: 0,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Your loan has been approved ! "),
            subtitle: Text("Your personal loan has been approved..."),
            leading: Icon(IcoFontIcons.check),
            onTap: () {},
          ),
          ListTile(
            title: Text("Application submitted successfully "),
            subtitle: Text("Your personal loan application submitted..."),
            leading: Icon(IcoFontIcons.check),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
