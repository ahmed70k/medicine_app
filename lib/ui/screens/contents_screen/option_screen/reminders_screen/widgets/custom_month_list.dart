import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_styles/app_styles.dart';

class CustomMonthList extends StatefulWidget {
  final List<String> monthList;
  final EasyInfiniteDateTimelineController easyInfiniteDateTimelineController;
  final DateTime selectedMonth;
   const CustomMonthList({
    super.key,
    required this.easyInfiniteDateTimelineController,
    required this.selectedMonth,
    required this.monthList
  });

  @override
  State<CustomMonthList> createState() => _MonthsListState();
}

class _MonthsListState extends State<CustomMonthList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(width: 16);
        },
        scrollDirection: Axis.horizontal,
        itemCount: widget.monthList.length,
        itemBuilder: (context, index) {
          bool isSelected = index + 1 == widget.selectedMonth.month;
          return InkWell(
            onTap: () {
              return setState(() {
                widget.easyInfiniteDateTimelineController.animateToDate(
                  DateTime(widget.selectedMonth.year, index + 1, 1),
                );
              });
            },
            child: isSelected
                ? Container(
                    alignment: Alignment.center,
                    width: 58,
                    decoration: BoxDecoration(
                      color: AppColors.white2,
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                    child: Text(
                      widget.monthList[index],
                      style: AppStyles.regularSecondary15,
                    ),
                  )
                : Center(
                    child: Text(widget.monthList[index], style: AppStyles.regularBlack15),
                  ),
          );
        },
      ),
    );
  }
}
