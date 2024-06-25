import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/components/my_button.dart';
import 'package:my_app/components/text.dart';
import 'package:my_app/services/auth/authservicedart.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  void signIn() {
    final authService = Provider.of<AuthService>(context, listen: false);

try{
  await authService.signInwithEmailandPassword(emailController.text,passwordController.text);
}

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.message,
                  size: 110,
                  color: Color.fromARGB(255, 93, 93, 93),
                ),
                const SizedBox(height: 50),
                const Text(
                  "Welcome back you've been missed",
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
                MyButton(onTap: () {}, text: "Sign in"),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Not a member?"),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text("Register Now",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
