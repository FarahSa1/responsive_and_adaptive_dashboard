import 'package:flutter/material.dart';
import 'package:real_sresponsive_and_adaptive_design/models/all_expenses_item_model.dart';
import 'package:real_sresponsive_and_adaptive_design/utils/app_images.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final List<AllExpensesItemModel> items = [
    //هاي الداتا بتيجي من باك اند اصلا مش هتعب فيها هيك
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20.129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$20.129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20.129',
    ),
  ];
  int selectedIndex = 0;
  // @override
  @override
  Widget build(BuildContext context) {
    //تعديل على حل 2 بدي اشيل البادنغ واستخدم بداله سايزد بوكس
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
              isSelected: selectedIndex == 0,
              itemModel: items[0],
            ),
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItem(
              isSelected: selectedIndex == 1,
              itemModel: items[1],
            ),
          ),
        ),
        SizedBox(width: 8),

        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItem(
              isSelected: selectedIndex == 2,
              itemModel: items[2],
            ),
          ),
        ),
      ],
    );

    /* /////////////حل 2 كااممممل  
    return Row(
      // children: items.map((e) => Expanded(child: AllExpensesItem(itemModel: e)),).toList(),
      children:
          items.asMap().entries.map((e) {
            // int index = e.key;
            // var item = e.value;

            //حل 2 افضل
            //هادا الحل افضل انه بطبق الاف كونديشن مباشرة ع البادينغ
            return Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
                child: AllExpensesItem(
                  isSelected: selectedIndex == index,
                  itemModel: item,
                ),
              ),
            );
            /* //حل 1
            if (index == 1) {
              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    updateIndex(index);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: AllExpensesItem(
                      isSelected: selectedIndex == index,
                      itemModel: item,
                    ),
                  ),
                ),
              );
            } else {
              return Expanded(
                child: GestureDetector(
                   onTap: () {
                    updateIndex(index);
                  },
                  child: AllExpensesItem(
                    isSelected: selectedIndex == index,
                    itemModel: item,
                  ),
                ),
              );
            }
           */
          }).toList(),
    );
  }
*/
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
