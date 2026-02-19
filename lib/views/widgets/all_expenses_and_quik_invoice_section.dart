import 'package:flutter/material.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/all_expenses.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/quick_invoice.dart';

class AllExpensesAndQuikInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuikInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //مش حل مثالي استخدم اكسباندد لتو ودجتس تحت بعض على محور واي
        // Expanded(child: AllExpenses()),
        // Expanded(child: QuickInvoice()),
        
        // SizedBox(height: 40,),
        //الحل الامثل
        AllExpenses(),
        SizedBox(height: 24,),
        QuickInvoice(),
      ],
    );
  }
}
