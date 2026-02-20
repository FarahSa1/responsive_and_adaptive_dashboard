import 'package:flutter/material.dart';
import 'package:real_sresponsive_and_adaptive_design/models/transaction_model.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const items = [
    TransactionModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
      isWithdrawal: true,
    ),
    TransactionModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM ',
      amount: r'$2,000',
      isWithdrawal: false,
    ),
    TransactionModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM ',
      amount: r'$20,129',
      isWithdrawal: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionItem(transactionModel: e)).toList()
    );
    //هنا عندي استخدجام شرينكراب بترو مع كاستو سكرول فيو الي هو ليزي بيلدر فالافضل استغني عن استخدام الليست فيو بيلدر واستبدلها ب كولوم
    // return ListView.builder(
    //   itemCount: items.length,
    //   shrinkWrap: true, //هبني عدد محدود ف مفش داعي ت اكسباند
    //   itemBuilder: (context, index) {
    //     return TransactionItem(transactionModel: items[index]);
    //   },
    // );
  }
}
