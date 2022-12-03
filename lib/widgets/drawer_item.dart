import 'package:flutter/material.dart';
import 'package:swift_recharge/variables.dart';

class DrawerItem extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function() press;

  const DrawerItem(
      {Key? key, required this.label, required this.icon, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: SizedBox(
        height: 40,
        child: Row(
          children: [
            Icon(
              icon,
              size: 20,
              color: Colors.black,
            ),
            const SizedBox(
              width: 40,
            ),
            Text(
              label,
              style: const TextStyle(fontSize: 20, color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
