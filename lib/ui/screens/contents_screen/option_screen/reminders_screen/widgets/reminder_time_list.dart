import 'package:flutter/material.dart';

import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_styles/app_styles.dart';

class ReminderTimeList extends StatelessWidget {
   List <String> timeList;
  ReminderTimeList({super.key,required this.timeList});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: 64,height: height * 0.5,
      child: ListView.separated(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: height * 0.01);
        },
        itemCount: timeList.length,
        itemBuilder: (_, index) {
          return Container(
            height: height * 0.1 / 1.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              color: AppColors.secondary,
            ),
            child: Center(
              child: Text(
                timeList[index],
                style: AppStyles.semiboldBlack13,
                textAlign: TextAlign.center,maxLines: 1,
              ),
            ),
          );
        },
      ),
    );
  }
}
