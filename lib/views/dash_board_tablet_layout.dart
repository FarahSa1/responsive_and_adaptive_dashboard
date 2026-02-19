import 'package:flutter/material.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/all_expenses_and_quik_invoice_section.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/custom_drawer.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/dash_board_mobile_layout.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/income_section.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/my_card_and_transaction_history_section.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: DashBoardMobileLayout(),
          ),
        ),
        SizedBox(width: 32),
      ],
    );
  }
}
