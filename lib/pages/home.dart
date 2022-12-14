import 'package:flutter/material.dart';
import 'package:swift_recharge/widgets/background_decor.dart';

class HomePage extends StatelessWidget {
  final String name;
  final String balance;
  final String activity;
  final String spent;
  final String income;
  final String saving;
  final String imageUrl;

  const HomePage({
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

    final titles = ["Bola Jegede", "John Cole", "Friday Pronto", "Sprouse Crane", "Collin Grace", "Fola Bash", "Cynthia Thompson", "Julian Alba"];

    return Container(
      child: Column(
        children: [
          header(imageUrl, name, balance, saving, activity, spent, income),
          const SizedBox(
            height: 10,
          ),
          recentActivity(imageUrl, name, "500", titles,)
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
  return SizedBox(
    height: 350,
    child: Stack(
      children: [
        Container(
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
                      height: 60,
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
            ],
          ),
        ),
        Positioned(
          right: 40,
          bottom: 30,
          left: 40,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(10),
              width: 320,
              height: 100,
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
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                          fontSize: 15,
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

// TODO: Once you are bac fix this code

Widget recentActivity(
  //int activity,
  String imageUrl,
  String name,
  String amount,
  List titles,
) {
  String subtitles = "Payment accepted";
  return Column(
    children: [
      const Padding(
        padding: EdgeInsets.only(left: 30),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
                  "Recent Activity",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          height: 400,
          decoration: BoxDecoration(
            color: Colors.grey.shade400.withOpacity(0.05),
            borderRadius: BorderRadius.circular(25),
          ),
          child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return ListTile(
                    title: Text(
                      titles[index],
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      subtitles,
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        imageUrl,
                      ),
                    ),
                    trailing: Text(
                      "USD $amount",
                      style: const TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                );
              }),
        ),
      ),
    ],
  );
}
