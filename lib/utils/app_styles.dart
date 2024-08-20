import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleRegular12 = const TextStyle(
    color: Colors.black,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleRegular14 = const TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.07);
  static TextStyle styleRegular20 = const TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleRegularSpacing12 = const TextStyle(
    color: Colors.black,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 0.22,
    letterSpacing: -0.24,
  );
  static TextStyle styleMedium10 = const TextStyle(
    color: Colors.black,
    fontFamily: "Roboto",
    fontSize: 10,
    fontWeight: FontWeight.w500,
    height: 0,
  );
  static TextStyle styleMedium32 = const TextStyle(
    color: Color(0xFF2B2F42),
    fontSize: 32,
    fontWeight: FontWeight.w500,
    height: 0,
  );
  static TextStyle styleMedium15 = const TextStyle(
    color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.w500,
    height: 0,
  );
  static TextStyle styleMedium20 = const TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    height: 0,
  );

  static TextStyle styleBold14 = const TextStyle(
    color: Color(0xFF2B2F42),
    fontSize: 14,
    fontFamily: 'Neuton',
    fontWeight: FontWeight.w700,
    letterSpacing: -0.07,
  );

  static TextStyle styleRegular36 = const TextStyle(
    color: Color(0xFF575353),
    fontSize: 36,
    fontFamily: 'Alatsi',
    fontWeight: FontWeight.w400,
  );
}
