import 'package:flutter/material.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/custom_background_container.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/my_cards_section.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/transaction_history.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardsSection(),
          SizedBox(height: 20,),
          Divider(
            height: 48,
            color: Color(0XFFF1F1F1),
          ),
          SizedBox(height: 20,),
          TransactionHistory(),
        ],
     ),
    );
  }
}