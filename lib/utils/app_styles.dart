import 'package:flutter/material.dart';

import 'size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular12(context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveText(context, fontSize: 12),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
        color: Colors.black,
        fontSize: getResponsiveText(context, fontSize: 14),
        fontWeight: FontWeight.w400,
        letterSpacing: 0.07);
  }

  static TextStyle styleRegular20(context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveText(context, fontSize: 20),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegularSpacing12(context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveText(context, fontSize: 12),
      fontWeight: FontWeight.w400,
      letterSpacing: -0.24,
    );
  }

  static TextStyle styleMedium10(context) {
    return TextStyle(
      color: Colors.black,
      fontFamily: "Roboto",
      fontSize: getResponsiveText(context, fontSize: 10),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium32(context) {
    return TextStyle(
      color: const Color(0xFF2B2F42),
      fontSize: getResponsiveText(context, fontSize: 32),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium26(context) {
    return TextStyle(
      color: const Color(0xFF2B2F42),
      fontSize: getResponsiveText(context, fontSize: 26),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium15(context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveText(context, fontSize: 15),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium14(context) {
    return TextStyle(
      fontFamily: "Roboto",
      color: Colors.black,
      fontSize: getResponsiveText(context, fontSize: 13),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium20(context) {
    return TextStyle(
      fontFamily: "Roboto",
      color: Colors.black,
      fontSize: getResponsiveText(context, fontSize: 20),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleBold14(context) {
    return TextStyle(
      color: const Color(0xFF2B2F42),
      fontSize: getResponsiveText(context, fontSize: 14),
      fontFamily: 'Neuton',
      fontWeight: FontWeight.w700,
      letterSpacing: -0.07,
    );
  }

  static TextStyle styleRegular36(context) {
    return TextStyle(
      color: const Color(0xFF575353),
      fontSize: getResponsiveText(context, fontSize: 36),
      fontFamily: 'Alatsi',
      fontWeight: FontWeight.w400,
    );
  }
}

double getResponsiveText(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double rsponsiveText = fontSize * scaleFactor;
  double maxFontSize = fontSize * 1.3;
  double minFontSize = fontSize * 0.9;
  return rsponsiveText.clamp(minFontSize, maxFontSize);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tabletSize) {
    return width / 700;
  } else if (width < SizeConfig.deskTopSize) {
    return width / 1100;
  } else {
    return width / 1920;
  }
}
