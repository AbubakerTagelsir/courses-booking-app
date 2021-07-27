import 'package:courses_booking_app/components/drawer_item.dart';
import 'package:flutter/material.dart';

// main navigation drawer

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 1,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.blue,
                backgroundBlendMode: BlendMode.screen,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://www.reliablesoft.net/wp-content/uploads/2019/04/learn-digital-marketing-free.png'))),
            child: Text(""),
          ),
          DrawerItem(
            func: () {},
            icon: Icons.home,
            title: "Home",
          ),
          DrawerItem(
            func: () {},
            icon: Icons.class__sharp,
            title: "My Courses",
          ),
          DrawerItem(
            func: () {},
            icon: Icons.account_circle,
            title: "My Profile",
          ),
          DrawerItem(
            func: () {},
            icon: Icons.people,
            title: "Instructors",
          ),
          DrawerItem(
            func: () {},
            icon: Icons.settings,
            title: "Settings",
          ),
          DrawerItem(
            func: () {},
            icon: Icons.logout,
            title: "Logout",
          ),
        ],
      ),
    );
  }
}
