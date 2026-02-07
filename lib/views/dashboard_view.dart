import 'package:flutter/material.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/adaptive_layout_widget.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
