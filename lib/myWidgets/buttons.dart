import 'dart:math';

import "package:flutter/material.dart";

class MyButtons extends StatelessWidget {
  const MyButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Butttons')),
      body: Center(
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: const EdgeInsets.all(10),
              fixedSize: const Size(200, 70),
              textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),

              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(100))
              // shape:
              //     RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              // shadowColor: Colors.amber,
              // visualDensity: VisualDensity(horizontal: 2, vertical: sqrt1_2),
              // side: const BorderSide(
              //     color: Colors.grey, strokeAlign: StrokeAlign.center, width: 4),
              // elevation: 3.5,
              // BeveledRectangleBorder(
              //     borderRadius: BorderRadius.circular(50))
              // StadiumBorder()
            ),
            onPressed: null,
            icon: Icon(Icons.share),
            label: Text("Label Button"),
            // child: const Text("Elevated Buttons"),
          ),
        ),
      ),
    );
  }
}
