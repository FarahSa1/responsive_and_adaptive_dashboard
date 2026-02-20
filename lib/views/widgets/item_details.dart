import 'package:flutter/material.dart';
import 'package:real_sresponsive_and_adaptive_design/models/item_details_model.dart';
import 'package:real_sresponsive_and_adaptive_design/utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});
  final ItemDetailsModel itemDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailsModel.color,
          shape: OvalBorder(),
        ),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleRegular16(context).copyWith(color: Color(0xff064061)),
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16(context).copyWith(color: Color(0xff208CC8)),
      ),
    );
  }
}



//  return Padding(
//       padding: const EdgeInsets.only(left: 12.0),
//       child: FittedBox(
//         fit: BoxFit.scaleDown,
//         child: Row(
//           children: [
//             Container(
//               width: 12,
//               height: 12,
//               decoration: ShapeDecoration(
//                 color: itemDetailsModel.color,
//                 shape: OvalBorder(),
//               ),
//             ),
//             SizedBox(width: 12,),
//             Text(
//               itemDetailsModel.title,
//               style: AppStyles.styleRegular16.copyWith(color: Color(0xff064061)),
//             ),
//             SizedBox(width: 24,),
//             Text(
//               itemDetailsModel.value,
//               style: AppStyles.styleMedium16.copyWith(color: Color(0xff208CC8)),
//             ),
//           ],
//         ),
//       ),
//     );