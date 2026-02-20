import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_sresponsive_and_adaptive_design/utils/app_images.dart';
import 'package:real_sresponsive_and_adaptive_design/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:
          420 / 215, //اخدت القيم من التصميم عشان يطكون الارتفاع ريسبونسف
      child: Container(
        decoration: ShapeDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.imagesCardbackground),
          ),
          color: Color(0xff4eb7f2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(left: 31, right: 42, top: 16),
              title: Text(
                'Name Card',
                style: AppStyles.styleRegular16(context).copyWith(color: Colors.white),
              ),
              subtitle:  Text(
                'Syah Bandi',
                style: AppStyles.styleMedium20(context),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Expanded(
              child: SizedBox(),
            ), //بدون م احط مسافة كرقم بل بستخدم هاي لانه انا جوا كولوم ب ياكسباند عادي جدا
            Padding(
              padding: const EdgeInsets.only(right: 48 - 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyles.styleSemiBold24(context).copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '12/24 - 124',
                    style: AppStyles.styleRegular16(context).copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            Flexible(child: const SizedBox(height: 54 - 28)),
          ],
        ),
      ),
    );
  }
}
