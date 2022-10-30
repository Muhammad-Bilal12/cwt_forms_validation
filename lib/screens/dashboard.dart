import 'dart:math';

import "package:flutter/material.dart";

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.withOpacity(0.3),
      appBar: AppBar(
        title: Text("Dashboard".toUpperCase()),
      ),
      body: Center(
        child: Text("The random number is : ${getNumber()}"),
      ),
    );
  }
}

// int getNumber() {
//   Random random = Random();
//   int number = random.nextInt(100);

//   return number;
// }

// Short method to create the same method
int getNumber() => Random().nextInt(100);
