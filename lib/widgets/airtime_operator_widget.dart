import 'package:flutter/material.dart';

class AirtimeOperator extends StatelessWidget {
  final String imageUrl;
  final String networkName;

  const AirtimeOperator({Key? key, required this.imageUrl, required this.networkName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
          ),
          child: Image.asset(imageUrl, fit: BoxFit.scaleDown,),
        ),

        const SizedBox(
          height: 15,
        ),

        Text(networkName, style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),)
      ],
    );
  }
}
