import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'package:responsive_dash_board/views/home_layout.dart';

void main() => runApp(
      DevicePreview(
        enabled: false,
        builder: (context) => const ResponsiveDashBoard(), // Wrap your app
      ),
    );

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      theme: ThemeData(
        fontFamily: 'Roboto', // Set the default font family
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeLayout(),
    );
  }
}
