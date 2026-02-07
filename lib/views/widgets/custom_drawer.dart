import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_sresponsive_and_adaptive_design/models/drawer_item_model.dart';
import 'package:real_sresponsive_and_adaptive_design/utils/app_images.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/active_and_Inactive_item.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/drawer_items_list_view.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              image: Assets.imagesAvatar3,
              title: 'Lekan Okeowo',
              subTitle: 'demo@gmail.com',
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemsListView(),

           //before CustomScrollView
          // Expanded(child: SizedBox()),
          // InActiveDrawerItem(drawerItemModel: DrawerItemModel(title: 'Setting system', image: Assets.imagesSetting)),
          // InActiveDrawerItem(drawerItemModel: DrawerItemModel(title: 'Logout account', image: Assets.imagesLogout)),
          // SizedBox(height: 48,)

          //after CustomScrollView
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(
                  height: 20, //لما يصغر ارتفاع الشاة بحددله اقل ارتفاع ممكن يقل عنه
                )),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Setting system',
                    image: Assets.imagesSetting,
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Logout account',
                    image: Assets.imagesLogout,
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
