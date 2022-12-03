import 'package:flutter/material.dart';
import 'package:swift_recharge/pages/add.dart';
import 'package:swift_recharge/pages/home.dart';
import 'package:swift_recharge/pages/send.dart';

List pages = [
  const HomePage(),
  const SendToPage(),
  const AddToPage(),
];
List<String> titles = ["Home", "Send to", "Add to",];
final selectedIcon = Colors.blue[300];
final unSelectedIcon = Colors.blue[100];
const textColor = Colors.black;