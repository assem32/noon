import 'package:flutter/material.dart';
import 'package:pro/commponnent/commponent.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Settings',style: TextStyle(color: Color(0xff08d7cf)),),
      ),
      body: Column(
        children: [
          settingItem(Icons.account_circle_outlined, 'Account'),
          settingItem(Icons.notifications_none, 'Notifications'),
          settingItem(Icons.language_outlined, 'Language'),
          settingItem(Icons.help_outline, 'Help'),
          settingItem(Icons.chat_bubble_outline, 'About'),
        ],
      ),
    );
  }
}
