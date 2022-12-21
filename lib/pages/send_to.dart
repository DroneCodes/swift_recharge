import 'package:flutter/material.dart';
import 'package:swift_recharge/widgets/button_widget.dart';

import '../widgets/number_button.dart';

class SendToPage extends StatefulWidget {
  const SendToPage({Key? key}) : super(key: key);

  @override
  State<SendToPage> createState() => _SendToPageState();
}

class _SendToPageState extends State<SendToPage> {
  TextEditingController textEditingController = TextEditingController();
  final String imageUrl = "assets/Profile_image.png";
  final String name = "Fisayo";
  final String email = "oluwafisayomiogunyemi@gmail.com";

  void moveTextCursorPosition() {
    textEditingController.selection = TextSelection(
        baseOffset: textEditingController.text.length,
        extentOffset: textEditingController.text.length);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 0,
                  ),
                  Text(
                    "Send to",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      child: Image.asset(imageUrl),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      name,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    Text(
                      email,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(
                      height: 24,
                    ),

                    TextField(
                      controller: textEditingController,
                      autofocus: true,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    const Text(
                      "USD",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    // The Widget for the button to show value

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            NumberButton(
                                text1: "1",
                                onPressed: () {
                                  textEditingController.text =
                                      '${textEditingController.text}1';
                                  moveTextCursorPosition();
                                }),
                            NumberButton(
                                text1: "2",
                                onPressed: () {
                                  textEditingController.text =
                                      '${textEditingController.text}2';
                                  moveTextCursorPosition();
                                }),
                            NumberButton(
                                text1: "3",
                                onPressed: () {
                                  textEditingController.text =
                                      '${textEditingController.text}3';
                                  moveTextCursorPosition();
                                }),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            NumberButton(
                                text1: "4",
                                onPressed: () {
                                  textEditingController.text =
                                      '${textEditingController.text}4';
                                  moveTextCursorPosition();
                                }),
                            NumberButton(
                                text1: "5",
                                onPressed: () {
                                  textEditingController.text =
                                      '${textEditingController.text}5';
                                  moveTextCursorPosition();
                                }),
                            NumberButton(
                                text1: "6",
                                onPressed: () {
                                  textEditingController.text =
                                      '${textEditingController.text}6';
                                  moveTextCursorPosition();
                                }),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            NumberButton(
                                text1: "7",
                                onPressed: () {
                                  textEditingController.text =
                                      '${textEditingController.text}7';
                                  moveTextCursorPosition();
                                }),
                            NumberButton(
                                text1: "8",
                                onPressed: () {
                                  textEditingController.text =
                                      '${textEditingController.text}8';
                                  moveTextCursorPosition();
                                }),
                            NumberButton(
                                text1: "9",
                                onPressed: () {
                                  textEditingController.text =
                                      '${textEditingController.text}9';
                                  moveTextCursorPosition();
                                }),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            NumberButton(
                                text1: ".",
                                onPressed: () {
                                  textEditingController.text =
                                      '${textEditingController.text}.';
                                  moveTextCursorPosition();
                                }),
                            NumberButton(
                                text1: "0",
                                onPressed: () {
                                  textEditingController.text =
                                      '${textEditingController.text}0';
                                  moveTextCursorPosition();
                                }),
                            ElevatedButton(onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                fixedSize: const Size(70, 70),
                                shape: const CircleBorder(),
                              ), child: Image.asset("assets/delete.png"),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 30,
                    ),
                    ButtonWidget(text: "Continue", onPress: () {}, width: 300,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

