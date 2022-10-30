import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.hackerNews),
          color: Colors.orange,
          highlightColor: Colors.green,
          splashColor: Colors.white,
          iconSize: 300,
        ),
      ),
    );
  }
}


// Icons
// we used two type of icons in flutter with simple icon and Icon button

// Material Icon ( default )
// Icon(
            // Icons.emoji_emotions_outlined,
            // size: 200,
            // color: Colors.yellow,
          // ),

// FontAwesome ( dependency required )
//  Icon(FontAwesomeIcons.hackerNews),