import 'package:flutter/material.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/all_expenses.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/all_expenses_and_quik_invoice_section.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/custom_drawer.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: AllExpensesAndQuikInvoiceSection(),
        ),
      ],
    );
  }
}
