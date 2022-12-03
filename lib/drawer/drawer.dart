import 'package:flutter/material.dart';
import 'package:swift_recharge/pages/drawer_pages/log_out.dart';
import 'package:swift_recharge/pages/drawer_pages/profile.dart';
import 'package:swift_recharge/pages/drawer_pages/settings.dart';
import 'package:swift_recharge/widgets/drawer_item.dart';

import '../variables.dart';

class NavigationDrawer extends StatelessWidget {
  final String imageUrl;
  final String name;

  const NavigationDrawer({
    Key? key,
    this.imageUrl = "assets/Profile_image.png",
    this.name = "Fisayo",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            drawerHeader(imageUrl, name),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              color: Colors.black,
              width: size.width,
            ),
            const SizedBox(
              height: 40,
            ),
            drawerItems(context)
          ],
        ),
      ),
    );
  }
}

Widget drawerHeader(String imageUrl, String name) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: Column(
      children: [
        const SizedBox(
          height: 70,
        ),
        CircleAvatar(
          radius: 35,
          child: Image.asset(imageUrl),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Welcome, $name",
          style: const TextStyle(
            color: textColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    ),
  );
}

Widget drawerItems(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: Column(
      children: [
        DrawerItem(
          label: "Profile",
          icon: Icons.person,
          press: () => onItemPressed(context, index: 0),
        ),
        const SizedBox(
          height: 20,
        ),
        DrawerItem(
          label: "Settings",
          icon: Icons.settings,
          press: () => onItemPressed(context, index: 1),
        ),
        const SizedBox(
          height: 20,
        ),
        DrawerItem(
          label: "Log Out",
          icon: Icons.logout,
          press: () => onItemPressed(context, index: 2),
        ),
      ],
    ),
  );
}

void onItemPressed(BuildContext context, {required int index}) {
  Navigator.pop(context);

  switch (index) {
    case 0:
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ProfilePage()));
      break;
    case 1:
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const SettingsPage()));
      break;
    case 2:
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const LogOutPage()));
      break;
    default:
      Navigator.pop(context);
      break;
  }
}
