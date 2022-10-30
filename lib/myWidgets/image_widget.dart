import "package:flutter/material.dart";

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Image(image: AssetImage('images/blogo.jpeg')),
    );
  }
}


// 4 ways to define Image

// - assets images
// Image(image: AssetImage('images/blogo.jpeg')),
// Image.asset(name)

// Network images
// Image(image: NetworkImage('url')),
// Image.network(url)
// 