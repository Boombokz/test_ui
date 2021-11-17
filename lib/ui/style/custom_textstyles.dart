import 'package:flutter/cupertino.dart';
import 'package:untitled/ui/style/custom_colors.dart';

abstract class CustomTextStyles {
  static const TextStyle h1 = TextStyle(
    color: CustomColors.darkGrey,
    fontSize: 32,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle h2 = TextStyle(
    color: CustomColors.white,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle h3 = TextStyle(
    color: CustomColors.darkGrey,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle h4 = TextStyle(
    color: CustomColors.darkGrey,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle small3 = TextStyle(
    color: CustomColors.primaryLightBlue,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle initials = TextStyle(
    color: CustomColors.white,
    fontSize: 12,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle subtitle1 = TextStyle(
    color: CustomColors.primaryLightBlue,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
}
