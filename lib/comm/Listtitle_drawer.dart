import 'package:flutter/material.dart';

class ListTitleDrawer extends StatelessWidget {
  ListTitleDrawer({super.key, required this.title, required this.icon});
  String title;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.black,
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
    );
  }
}
