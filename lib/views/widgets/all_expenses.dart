import 'package:flutter/material.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/all_expenses_header.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/all_expenses_items_list_view.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 20.0,
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16,),
           AllExpensesItemsListView()
        ],
      ),
    );
  }
}
