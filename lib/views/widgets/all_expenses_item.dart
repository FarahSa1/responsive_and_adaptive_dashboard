import 'package:flutter/material.dart';
import 'package:real_sresponsive_and_adaptive_design/models/all_expenses_item_model.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/active_and_Inactive_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.itemModel, required this.isSelected});

  // final String image,title,header,price; //بعمل مودل الهم افضل
  final AllExpensesItemModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected  
    ? ActiveAllExpensesItem(itemModel: itemModel)
    : InActiveAllExpensesItem(itemModel: itemModel);
  }
}

