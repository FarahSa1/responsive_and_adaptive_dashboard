import 'package:flutter/material.dart';
import 'package:real_sresponsive_and_adaptive_design/utils/app_styles.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('All Espenses', style: AppStyles.styleSemiBold20,),
        Expanded(child: SizedBox()), //ببعد العنصرين عن بعض اقصى ما يمكن
        RangeOptions()
      ],
    );
  }
}