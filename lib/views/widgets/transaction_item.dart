import 'package:flutter/material.dart';
import 'package:real_sresponsive_and_adaptive_design/models/transaction_model.dart';
import 'package:real_sresponsive_and_adaptive_design/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});

  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xfffafafa),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(transactionModel.title, style: AppStyles.styleRegular16,),
        subtitle: Text(transactionModel.date, style: AppStyles.styleRegular16.copyWith(color: Color(0xffAAAAAA)),),
        trailing:  Text(transactionModel.amount, style: AppStyles.styleSemiBold20.copyWith(
          color: transactionModel.isWithdrawal ? Color(0xffF3735E):  Color(0xFF7DD97B)
        ),
        ),

      ),
    );
  }
}
