import 'package:flutter/material.dart';
import 'package:real_sresponsive_and_adaptive_design/utils/app_styles.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/all_expenses_and_quik_invoice_section.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/custom_background_container.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/custom_drawer.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/income_details.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/income_header.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/income_section.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/my_card_and_transaction_history_section.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/my_cards_section.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/range_options.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/transaction_history.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(flex: 2, child: Padding(
          padding: EdgeInsets.only(top: 40.0),
          child: AllExpensesAndQuikInvoiceSection(),
        )),
        SizedBox(width: 24),
        Expanded(
          child: Column(
            children: [
              SizedBox(height: 40,),
              MyCardAndTransactionHistorySection(),
              SizedBox(height: 24,),
              Expanded(child: IncomeSection())
            ],
          ),
        ),
      ],
    );
  }
}
