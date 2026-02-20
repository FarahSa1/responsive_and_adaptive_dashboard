import 'dart:math';

import 'package:flutter/material.dart';
import 'package:real_sresponsive_and_adaptive_design/models/item_details_model.dart';
import 'package:real_sresponsive_and_adaptive_design/utils/app_styles.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const items = [
    ItemDetailsModel(
      color: Color(0xff208bc7),
      title: 'Design service',
      value: '40%',
    ),
    ItemDetailsModel(
      color: Color(0xff4EB7F2),
      title: 'Design product',
      value: '25%',
    ),
    ItemDetailsModel(
      color: Color(0xff064061),
      title: 'Product royalti',
      value: '20%',
    ),
    ItemDetailsModel(color: Color(0xffE2DECD), title: 'Other', value: '22%'),
  ];

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.sizeOf(context).width.toString()); //1750 AS A BREAK POINT
    //AFTER
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) => ItemDetails(itemDetailsModel: e)).toList(),
    );
    //BEFORE
    //نفس المشلكة الي تم حلها سابقا ب ترانزاكشن ليست فيو
    //هنا عندي استخدجام شرينكراب بترو مع كاستو سكرول فيو الي هو ليزي بيلدر فالافضل استغني عن استخدام الليست فيو بيلدر واستبدلها ب كولوم
    // return ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //     return ItemDetails(itemDetailsModel: items[index]);
    //   },
    // );
  }
}
