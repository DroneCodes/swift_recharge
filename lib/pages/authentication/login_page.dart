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
          children: const [
            SizedBox(
              height: 20,
            ),
            Text(
              "Log in to Scale",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Text("Email", style: TextStyle(color: Colors.black,),),

            SizedBox(
              height: 10,
            ),

            TextFieldInput(textEditingController: , hintText: '', textInputType: TextInputType.text,)
          ],
        ),
      ),
    );
  }
}
