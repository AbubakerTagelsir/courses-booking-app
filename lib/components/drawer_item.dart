import 'package:flutter/material.dart';

// drawer item widget
class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function func;
  DrawerItem({required this.title, required this.icon, required this.func});

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: ListTile(
        title: Text(title),
        leading: Icon(icon),
        onTap: func(),
      ),
    );
  }
}
