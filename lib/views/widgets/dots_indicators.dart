import 'package:flutter/material.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/custom_dot_indicator.dart';

class DotsIndicators extends StatelessWidget {
  const DotsIndicators({super.key, required this.currentPageIndex});
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6.0),
          child: CustomDotIndicator(isActive: index == currentPageIndex),
        ),
      ),
    );
  }
}
