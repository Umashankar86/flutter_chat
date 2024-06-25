import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;

  const MyButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        // Just to make the button visible
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(9)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ), // Adding a style to make the text visible
          ),
        ),
      ),
    );
  }
}
