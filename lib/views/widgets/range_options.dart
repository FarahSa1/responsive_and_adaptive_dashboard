import 'package:flutter/material.dart';
import 'package:real_sresponsive_and_adaptive_design/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Color(0xFFFFFFFF),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Text('Monthly', style: AppStyles.styleMedium16),
          const SizedBox(width: 18),
          Icon(Icons.keyboard_arrow_down_rounded, color: Color(0xFF064060)),
        ],
      ),
    );
  }
}
