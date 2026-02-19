import 'package:flutter/material.dart';
import 'package:real_sresponsive_and_adaptive_design/utils/app_styles.dart';

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Transaction History', style: AppStyles.styleSemiBold20),
        Text('See all', style: AppStyles.styleMedium16.copyWith(color: Color(0xff4EB7F2))),
      ],
    );
  }
}