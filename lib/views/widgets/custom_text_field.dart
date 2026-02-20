import 'package:flutter/material.dart';
import 'package:real_sresponsive_and_adaptive_design/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppStyles.styleRegular16(context).copyWith(color: Color(0xffaaaaaa)),
        //عشان اعطي التكست فيلد لون للارضية بستخدم التو اتربيوتس سوا
        fillColor: Color(0xfffafafa),
        filled: true,
        border: buildOutlineBorder(),
        enabledBorder: buildOutlineBorder(),
        focusedBorder: buildOutlineBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color:Color(0xfffafafa), )
      );
  }
}