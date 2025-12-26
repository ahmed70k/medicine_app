import 'package:flutter/material.dart';
import 'package:medicine_app/l10n/app_localizations.dart';
import 'package:medicine_app/ui/utils/app_colors/app_colors.dart';

class ScheduleModelClass {
  Widget leadingIcon;
  Widget headerIcon;
  String title;
  String supTitle;
  Widget editableIcon;
  Widget alarmTime;
  ScheduleModelClass({
    required this.title,
    required this.headerIcon,
    required this.leadingIcon,
    required this.supTitle,
    required this.editableIcon,
    required this.alarmTime
  });
  static List<ScheduleModelClass> scheduleModelClass(BuildContext context) {
    return [
      ScheduleModelClass(
        title: AppLocalizations.of(context)!.morning_before_breakfast,
        headerIcon: Icon(Icons.add,size: 28,color: AppColors.white,),
        leadingIcon: Icon(Icons.sunny,size: 28,color:Colors.orangeAccent),
        supTitle:  AppLocalizations.of(context)!.alarm_set_for_8am,
        editableIcon: Icon(Icons.edit_outlined,size: 28,color:AppColors.secondary),
        alarmTime:Icon(Icons.add_alert_sharp,size: 28,color:AppColors.primary),
      ),
      ScheduleModelClass(
        title: AppLocalizations.of(context)!.morning_after_breakfast,
        headerIcon: Icon(Icons.add,size: 28,color:AppColors.white),
        leadingIcon: Icon(Icons.nights_stay_outlined,size: 28,color:Colors.orangeAccent),
        supTitle:AppLocalizations.of(context)!.alarm_set_for_8am,
        editableIcon: Icon(Icons.edit_outlined,size: 28,color:AppColors.secondary),
        alarmTime:Icon(Icons.add_alert_sharp,size: 28,color:AppColors.primary),
      ),
    ];
  }
}
