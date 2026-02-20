import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/custom_background_container.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/income_chart.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/income_details.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/income_header.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeHeader(),
          SizedBox(height: 16),
          IncomeSectionBody(),
        ],
      ),
    );
  }
}
