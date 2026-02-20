import 'package:flutter/material.dart';
import 'package:real_sresponsive_and_adaptive_design/utils/size_config.dart';
import 'package:real_sresponsive_and_adaptive_design/views/dash_board_tablet_layout.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/adaptive_layout_widget.dart';
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
    // SizeConfig.init(context); //عادة بتكون بالسبلاش فيو لازم استدعيها عشان تاخد قيم للودث والهايت من اول المشروع
    return Scaffold(
      key: scaffoldKey,
      appBar:
          //before creating SizeConfig Size
          /* MediaQuery.sizeOf(context).width < 800 */
          //after creating SizeConfig Size
           MediaQuery.sizeOf(context).width < SizeConfig.tablet 
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
          MediaQuery.sizeOf(context).width < SizeConfig.tablet /*800*/ ? const CustomDrawer() : null,
      backgroundColor: const Color(0xffE5E5E5),
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashBoardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
