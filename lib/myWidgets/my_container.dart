import "package:flutter/material.dart";

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("My Container Widget"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 300,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
              image: const DecorationImage(image: AssetImage("images/p.png")),
              border: Border.all(color: Colors.grey.shade800, width: 6.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black45,
                  blurRadius: 2,
                  offset: Offset(4, 5),
                ),
              ]),
        ),
      ),
    );
  }
}
