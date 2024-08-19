import 'package:flutter/material.dart';

import 'package:responsive_dash_board/views/home_layout.dart';

void main() {
  runApp(const ResponsiveDashBoard());
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Roboto', // Set the default font family
      ),
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
    );
  }
}
