import 'package:flutter/material.dart';

class NumberButton extends StatelessWidget {
  final String text1;
  final Function onPressed;

  const NumberButton({Key? key, required this.text1, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        fixedSize: const Size(70, 70),
        shape: const CircleBorder(),
      ),
      child: Center(
        child: Text(
          text1,
          style: const TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
    );
  }
}
