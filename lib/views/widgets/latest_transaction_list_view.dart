import 'package:flutter/material.dart';
import 'package:real_sresponsive_and_adaptive_design/models/user_info_model.dart';
import 'package:real_sresponsive_and_adaptive_design/utils/app_images.dart';
import 'package:real_sresponsive_and_adaptive_design/views/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const items = [
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: 'Josua Nunito',
      subTitle: 'Josh Nunito@gmail.com@gmail',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar3,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    // هنا بلاحظ الليست تايل تم انشاؤها من قبل فقط هنا محتاج انشئ الليست اوف مودل الي بتتعامل معها الليست فيو تعتي
    //اذا بنشئ مودل للبينات الي هعرضها

    //الحل الثاني الامثل بمثالنا لانه عدد العناصر الافقية محدود بالتالي بستخدم رو وليس ليست فيو
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((e) => IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)),).toList(),
      ),
    );
    //الاحل الاول لاستخدام لسيت فيو افقية ولكن بستخجمه لما يكون عندي عناصر عددها كبير جدا
    /*
    return SizedBox(
      height: 80, //or 72
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(child: UserInfoListTile(userInfoModel: items[index]));
        },
      ),
    );
    */
  }
}
