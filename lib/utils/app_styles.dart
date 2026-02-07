import 'package:flutter/painting.dart';

//بخليه ابستراكت لانه مش محتاج انشئ منه اوبجكت
abstract class AppStyles {
  static const TextStyle styleRegular12 = TextStyle(
    color: Color(0xffAAAAAA),
    fontSize: 12,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static const TextStyle styleRegular14 = TextStyle(
    color: Color(0xffAAAAAA),
    fontSize: 14,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static const TextStyle styleRegular16 = TextStyle(
    color: Color(0xFF064060), //اللون الامثر استخداما لهادا السيتايل
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static const TextStyle styleMedium16 = TextStyle(
    color: Color(0xFF064060),
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );

  static const TextStyle styleSemiBold16 = TextStyle(
    color: Color(0xFF064060),
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  static const TextStyle styleBold16 = TextStyle(
    color: Color(0xff4EB7F2),
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
  );

  static const TextStyle styleSemiBold18 = TextStyle(
    color: Color(0xffffffff),
    fontSize: 18,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  static const TextStyle styleMedium20 = TextStyle(
    color: Color(0xFFffffff),
    fontSize: 20,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );

  static const TextStyle styleSemiBold20 = TextStyle(
    color: Color(0xFF064060),
    fontSize: 20,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  static const TextStyle styleSemiBold24 = TextStyle(
    color: Color(0xff4EB7F2),
    fontSize: 24,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
}
