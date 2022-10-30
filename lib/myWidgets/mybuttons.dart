import 'package:flutter/material.dart';

class MyOutlineButtons extends StatelessWidget {
  const MyOutlineButtons({super.key, required this.onPressed});

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(20),
        minimumSize: const Size(100, 40),
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
        side: const BorderSide(color: Colors.blue),
      ),
      child: Text(
        "Submit Product".toUpperCase(),
      ),
    );
  }
}
