import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/app_colors/app_colors.dart';

class CustomDayList extends StatefulWidget {
  final EasyInfiniteDateTimelineController easyInfiniteDateTimelineController;
  final DateTime selectedDate;
  final Function(DateTime) onDateChange;
  const CustomDayList({
    super.key,
    required this.easyInfiniteDateTimelineController,
    required this.selectedDate,
    required this.onDateChange,
  });

  @override
  State<CustomDayList> createState() => _CustomDayListState();
}

class _CustomDayListState extends State<CustomDayList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EasyInfiniteDateTimeLine(
          activeColor: AppColors.secondary,
          controller: widget.easyInfiniteDateTimelineController,
          firstDate: DateTime(2026, 1, 11),
          lastDate: DateTime(2035, 3, 1),
          focusDate: widget.selectedDate,
          onDateChange: (date) {
            widget.onDateChange(date);
          },
          showTimelineHeader: false,
          dayProps: EasyDayProps(
            activeDayStyle: DayStyle(
              dayNumStyle: TextStyle(fontSize: 16, color: AppColors.white,fontWeight:FontWeight.bold),
              dayStrStyle: TextStyle(fontSize: 14, color: AppColors.white,fontWeight:FontWeight.bold),
            ),
            todayStyle: DayStyle(
              dayNumStyle: TextStyle(fontSize: 16, color: AppColors.secondary,),
              dayStrStyle: TextStyle(fontSize: 14, color: AppColors.secondary,),
            ),
            inactiveDayStyle: DayStyle(
              dayNumStyle: TextStyle(fontSize: 16, color: AppColors.secondary),
              dayStrStyle: TextStyle(fontSize: 14, color: AppColors.secondary),
            ),
            todayHighlightColor: AppColors.white2,
            height: 68,
            width: 58,
            dayStructure: DayStructure.dayNumDayStr,
          ),
        ),
      ],
    );
  }
}
