import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:real_sresponsive_and_adaptive_design/utils/size_config.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/detailed_income_chart.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/income_chart.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1750 //القيمة 1750 فردية هتظهر معي مرة وحدة هنا خاصة بالكيس هاي يبقى مفش داعي اعرفها داخل الكلاس
        ? const Expanded(child: Padding(
          padding: EdgeInsets.all(16.0),
          child: DetailedIncomeChart(),
        ))
        : const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: IncomeChart(),
            ), // ماخدوة الهايت بالكامل ف بستخدم اسبيكت ريشيو عشان ازبط حجمها
            Expanded(flex: 2, child: IncomeDetails()),
          ],
        );
  }
}

