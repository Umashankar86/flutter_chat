import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

import "../components/my_button.dart";
import "../components/text.dart";

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void signUp() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                const Icon(
                  Icons.message,
                  size: 110,
                  color: Color.fromARGB(255, 93, 93, 93),
                ),
                const SizedBox(height: 50),
                const Text(
                  "Lets Create a account for you..",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 25),
                MyTextField(
                    controller: emailController,
                    hintText: 'Email',
                    obscureText: false),
                const SizedBox(height: 10),
                MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true),
                const SizedBox(height: 25),
                MyTextField(
                    controller: confirmPasswordController,
                    hintText: 'Confirm Password',
                    obscureText: true),
                const SizedBox(height: 25),
                MyButton(onTap: signUp, text: "Sign up"),
                const SizedBox(
                  height: 50,
                ),
                Row(children: [
                  const Text("Already a member"),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text("You can log in now",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
