import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image, this.imageBackgroungColor, this.imageColor, });

  final String image;
  final Color? imageBackgroungColor, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //container or circleAvatar
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 60
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                // width: 60,
                // height: 60,
                decoration:  ShapeDecoration(
                  shape: OvalBorder(),
                  color: imageBackgroungColor ?? Color(0xffFAFAFA),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(imageColor ?? Color(0xff4EB7F2), BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(child: SizedBox()), //OR Spacer()
        Icon(Icons.arrow_forward_ios_rounded, color: imageColor == null ? Color(0xff064061) : Colors.white),
      ],
    );
  }
}
