import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/income_section.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData())
    );
  }

  PieChartData getChartData() {
  return PieChartData(
    pieTouchData: PieTouchData(
      // enabled: true // نضمن انها شغالة
      touchCallback: (p0, PieTouchResponse) {
        // print(
        //  PieTouchResponse.toString()
        // );
      activeIndex =  PieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
      setState(() {
        
      });
      },
    ),
    sectionsSpace: 0,
    sections: [
      PieChartSectionData(
        value: 40,
        color: Color(0xff208bc7),
        radius: activeIndex == 0 ? 60 : 50,
        showTitle: false,
      ),
      PieChartSectionData(
        value: 25,
        color: Color(0xff4EB7F2),
        radius: activeIndex == 1 ? 60 : 50,
        showTitle: false,
      ),
      PieChartSectionData(
        value: 20,
        color: Color(0xff064061),
        radius: activeIndex == 2 ? 60 : 50,

        showTitle: false,
      ),
      PieChartSectionData(
        value: 22,
        color: Color(0xffE2DECD),
        radius: activeIndex == 3 ? 60 : 50,
        showTitle: false,
      ),
    ],
  );
}

}

