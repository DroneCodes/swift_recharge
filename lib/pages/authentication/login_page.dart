import 'package:flutter/material.dart';

import '../../widgets/text_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController emailEditingController = TextEditingController();
  final TextEditingController passwordEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Log in to Scale",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            const Text("Email", style: TextStyle(color: Colors.black,),),

            const SizedBox(
              height: 10,
            ),

            TextFieldInput(textEditingController: emailEditingController, hintText: 'youremail@gmail.com', textInputType: TextInputType.text,),

            const SizedBox(
              height: 20,
            ),

            const Text("Password", style: TextStyle(color: Colors.black,),),

            const SizedBox(
              height: 10,
            ),

            TextFieldInput(textEditingController: emailEditingController, hintText: 'Your Password', textInputType: TextInputType.text,)

          ],
        ),
      ),
    );
  }
}
