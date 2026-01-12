import 'package:flutter/material.dart';
import 'package:medicine_app/ui/utils/app_styles/app_styles.dart';
import '../../../../../utils/app_colors/app_colors.dart';

class CustomDailyColumn extends StatelessWidget {
  final String textDose;
  final Widget leadingRow;
  final Widget actionRow;
  final String? counter;

  const CustomDailyColumn({super.key, required this.textDose,required this.leadingRow,required this.actionRow,this.counter});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(textDose,style: AppStyles.regularBlack14,),
          SizedBox(height: height * 0.02,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 18),
            color: AppColors.white2,
            height: height * 0.06,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                leadingRow,
                 Text(counter?? "",style: AppStyles.mediumBlack18,),
                 actionRow,
              ],
            ),
          ),
          SizedBox(height: height * 0.03,),
        ],
      ),
    );
  }
}
