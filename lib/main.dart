import 'package:first_app_cwt/myWidgets/buttons.dart';
import 'package:first_app_cwt/myWidgets/myappbar.dart';
import 'package:first_app_cwt/screens/myforms.dart';
import 'package:flutter/material.dart';

import 'myWidgets/my_container.dart';

// import 'package:first_app_cwt/screens/dashboard.dart';
// import 'package:first_app_cwt/myWidgets/image_widget.dart';
// import 'package:first_app_cwt/myWidgets/my_icons.dart';

void main() => runApp(MyApp());

// organizing the code

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      themeMode:
          ThemeMode.system, //theme mode change screen theme light or dark
      title: "First flutter app",
      home: MyForm(),
    );
  }
}
