import 'package:flutter/material.dart';
import 'package:swift_recharge/widgets/button_widget.dart';

import '../widgets/airtime_operator_widget.dart';

class NetworkPage extends StatefulWidget {
  const NetworkPage({Key? key}) : super(key: key);

  @override
  State<NetworkPage> createState() => _NetworkPageState();
}

class _NetworkPageState extends State<NetworkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Center(
              child: Text(
                "Payment",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Row(
                  children: const [
                    SizedBox(
                      width: 45,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Choose Your Operator",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.normal,),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 50,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    AirtimeOperator(imageUrl: 'assets/mtnLogo.jpg', networkName: 'MTN',),
                    AirtimeOperator(imageUrl: 'assets/GloLogo.jpg', networkName: 'Glo'),
                    AirtimeOperator(imageUrl: 'assets/airtelLogo.png', networkName: 'Airtel')
                  ],
                ),

                const SizedBox(
                  height: 15,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    AirtimeOperator(imageUrl: 'assets/9mobile.png', networkName: '9mobile',),
                    AirtimeOperator(imageUrl: 'assets/Vodafone_logo.png', networkName: 'Vodaphone'),
                    AirtimeOperator(imageUrl: 'assets/visaphoneLogo.png', networkName: 'Visaphone')
                  ],
                ),
              ],
            ),

            const SizedBox(
              height: 40,
            ),

            ButtonWidget(text: "Next", onPress: () {}, width: 150)
          ],
        ),
      ),
    );
  }
}
