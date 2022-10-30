import "package:flutter/material.dart";

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Rows and Columns"), centerTitle: true),
      body: Container(child: Row(children: [])),
    );
  }
}
