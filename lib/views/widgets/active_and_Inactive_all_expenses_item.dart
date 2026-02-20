import 'package:flutter/material.dart';
import 'package:real_sresponsive_and_adaptive_design/models/all_expenses_item_model.dart';
import 'package:real_sresponsive_and_adaptive_design/utils/app_styles.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/all_expenses_item_header.dart';

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({super.key, required this.itemModel});

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Color(0xff4DB7F2),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xff4DB7F2)),

          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModel.image,
            imageBackgroungColor: Colors.white.withValues(
              alpha: 0.10000000149011612,
            ),
            imageColor: Colors.white,
          ),
          const SizedBox(height: 34),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              itemModel.title,
              style: AppStyles.styleSemiBold16(
                context,
              ).copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(height: 8),
          FittedBox(
                        fit: BoxFit.scaleDown,

            child: Text(
              itemModel.date,
              style: AppStyles.styleRegular14(
                context,
              ).copyWith(color: Color(0xfffafafa)),
            ),
          ),
          const SizedBox(height: 16),
          FittedBox(
                        fit: BoxFit.scaleDown,

            child: Text(
              itemModel.price,
              style: AppStyles.styleSemiBold24(
                context,
              ).copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({super.key, required this.itemModel});

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xfff1f1f1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(image: itemModel.image),
          const SizedBox(height: 34),
          FittedBox(
                                    fit: BoxFit.scaleDown,

            child: Text(itemModel.title, style: AppStyles.styleSemiBold16(context))),
          const SizedBox(height: 8),
          FittedBox(
                                    fit: BoxFit.scaleDown,

            child: Text(itemModel.date, style: AppStyles.styleRegular14(context))),
          const SizedBox(height: 16),
          FittedBox(
                                    fit: BoxFit.scaleDown,

            child: Text(itemModel.price, style: AppStyles.styleSemiBold24(context))),
        ],
      ),
    );
  }
}
