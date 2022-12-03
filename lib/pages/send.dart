import 'package:flutter/material.dart';
import 'package:swift_recharge/widgets/background_decor.dart';

class SendToPage extends StatelessWidget {
  final String name;
  final String balance;
  final String activity;
  final String spent;
  final String income;
  final String saving;
  final String imageUrl;

  const SendToPage({
    Key? key,
    this.name = "Fisayo",
    this.balance = "98,000,000",
    this.activity = "124",
    this.spent = "54k",
    this.income = "36k",
    this.saving = "32",
    this.imageUrl = "assets/5559852.jpg",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //headerWidget(name, balance, saving),
          header(imageUrl, name, balance, saving, activity, spent, income),
        ],
      ),
    );
  }
}

Widget header(
  String imageUrl,
  String name,
  String balance,
  String savings,
  String activity,
  String spent,
  String income,
) {
  return Container(
    height: 250,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imageUrl),
        colorFilter: ColorFilter.mode(
          Colors.black.withOpacity(0.35),
          BlendMode.multiply,
        ),
        fit: BoxFit.cover,
      ),
    ),
    child: Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.waving_hand,
                    color: Colors.orangeAccent[200],
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Hello, $name!",
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  "\$$balance",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  "Your savings grew $savings% from last month",
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: -10,
          left: 40,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(10),
              width: 320,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.local_activity_outlined,
                        color: Colors.blue[200],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        activity,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Activity",
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.outbound_outlined,
                        color: Colors.blue[200],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        "\$$spent",
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Spent",
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.call_received_outlined,
                        color: Colors.blue[200],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        "\$$income",
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Income",
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget headerWidget(String name, String amount, String saving) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.waving_hand,
              color: Colors.orangeAccent[200],
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              "Hello, $name!",
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Center(
          child: Text(
            "\$$amount",
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Center(
          child: Text(
            "Your savings grew $saving% from last month",
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
  );
}
