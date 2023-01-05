import 'package:flutter/material.dart';
import 'package:swift_recharge/pages/add.dart';
import 'package:swift_recharge/pages/send_to.dart';
import 'package:swift_recharge/pages/home.dart';
import 'package:swift_recharge/pages/startup_page.dart';

List pages = [
  const SendToPage(),
  const HomePage(),
  const StartupPage(),
];
final selectedIcon = Colors.blue[300];
final unSelectedIcon = Colors.blue[100];
const textColor = Colors.black;
final backgroundColor = Colors.white.withOpacity(0.45);