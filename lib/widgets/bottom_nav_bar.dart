import 'package:flutter/material.dart';
import 'package:swift_recharge/drawer/drawer.dart';
import 'package:swift_recharge/variables.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.blue[300],
        //   title: Text(titles[currentIndex], style: const TextStyle(color: Colors.black),),
        //   centerTitle: true,
        // ),
        // drawer: const NavigationDrawer(),
        body: Container(
          child: pages[currentIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: selectedIcon,
          unselectedItemColor: unSelectedIcon,
          onTap: (index) => setState(() {
            currentIndex = index;
          }),
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.send_outlined), label: "Send"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_sharp), label: "Add"),
          ],
        ),
      ),
    );
  }
}
