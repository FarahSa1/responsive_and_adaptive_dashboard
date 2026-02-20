import 'package:flutter/material.dart';
import 'package:real_sresponsive_and_adaptive_design/models/transaction_model.dart';
import 'package:real_sresponsive_and_adaptive_design/utils/app_styles.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/transaction_header.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/transaction_history_list_view.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/transaction_item.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHeader(),
        const SizedBox(height: 16),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16(context).copyWith(color: Color(0xffAAAAAA)),
        ),
        SizedBox(height: 16,),
        TransactionHistoryListView()
      ],
    );
  }
}
