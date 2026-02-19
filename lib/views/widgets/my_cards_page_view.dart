import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/my_card.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    // return PageView.builder(
    //   scrollDirection: Axis.horizontal,
    //   itemCount: 3,
    //   itemBuilder: (context, index) {
    //     return const MyCard();
    //   },
    // );

    //refactoring.....
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(3, (index) => const MyCard()),
    );
  }
}
