import 'package:flutter/material.dart';
import 'package:real_sresponsive_and_adaptive_design/views/dash_board_tablet_layout.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/adaptive_layout_widget.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/all_expenses_and_quik_invoice_section.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/custom_drawer.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/dash_board_mobile_layout.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar:
          MediaQuery.sizeOf(context).width < 800
              ? AppBar(
                elevation: 0,
                backgroundColor: Color(0xfffafafa),
                leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              )
              : null,

      drawer:
          MediaQuery.sizeOf(context).width < 800 ? const CustomDrawer() : null,
      backgroundColor: const Color(0xffE5E5E5),
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashBoardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
