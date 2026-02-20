import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_sresponsive_and_adaptive_design/models/user_info_model.dart';
import 'package:real_sresponsive_and_adaptive_design/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key, required this.userInfoModel,
  });
  // final String image, title, subTitle;
  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.image),
          title: Text(userInfoModel.title, style: AppStyles.styleBold16(context)),
          subtitle: Text(userInfoModel.subTitle, style: AppStyles.styleRegular12(context)),
        ),
      ),
    );
  }
}
