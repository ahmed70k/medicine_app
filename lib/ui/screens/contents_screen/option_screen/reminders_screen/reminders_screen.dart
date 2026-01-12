import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:medicine_app/data_class/reminders_model_data/reminder_model_class.dart';
import 'package:medicine_app/l10n/app_localizations.dart';
import 'package:medicine_app/ui/screens/contents_screen/option_screen/reminders_screen/widgets/custom_month_list.dart';
import 'package:medicine_app/ui/screens/contents_screen/option_screen/reminders_screen/widgets/custom_day_list.dart';
import 'package:medicine_app/ui/screens/contents_screen/option_screen/reminders_screen/widgets/medicine_header.dart';
import 'package:medicine_app/ui/screens/contents_screen/option_screen/reminders_screen/widgets/reminder_medicine_card.dart';
import 'package:medicine_app/ui/screens/contents_screen/option_screen/reminders_screen/widgets/reminder_time_list.dart';
import 'package:medicine_app/ui/utils/app_assets/app_assets.dart';
import 'package:medicine_app/ui/utils/app_styles/app_styles.dart';
import '../../../../custom_widgets/arrow_back/arrow_back.dart';
import '../../../../custom_widgets/base_screen/base_screen.dart';
import '../../../../utils/app_colors/app_colors.dart';

class RemindersScreen extends StatefulWidget {
  static const String routeName = "RemindersScreen";
  const RemindersScreen({super.key});

  @override
  State<RemindersScreen> createState() => _RemindersScreenState();
}

class _RemindersScreenState extends State<RemindersScreen> {
  DateTime selectedMonthAndDate = DateTime.now();
  EasyInfiniteDateTimelineController easyInfiniteDateTimelineController =
      EasyInfiniteDateTimelineController();

  List<ReminderModelClass> myReminderModelClass = [
    ReminderModelClass(
      image: AppAssets.capsules,
      name: "Theraflu MaxGrip",
      dosageLabel: "2 pills(15mg)",
      time: "8:00am",
      isTaken: true,
    ),
    ReminderModelClass(
      image: AppAssets.capsules,
      name: "Theraflu MaxGrip",
      dosageLabel: "2 pills(15mg)",
      time: "8:00am",
      isTaken: false,
    ),
    ReminderModelClass(
      image: AppAssets.capsules,
      name: "Theraflu MaxGrip",
      dosageLabel: "2 pills(15mg)",
      time: "8:00am",
      isTaken: false,
    ),
    ReminderModelClass(
      image: AppAssets.capsules,
      name: "Theraflu MaxGrip",
      dosageLabel: "2 pills(15mg)",
      time: "8:00am",
      isTaken: false,
    ),
  ];
  List<String> timeList = [
    "1:00",
    "2:00",
    "3:00",
    "4:00",
    "5:00",
    "6:00",
    "7:00",
    "8:00",
    "9:00",
    "10:00",
  ];
  List<String> monthList = [
    "JAN",
    "FEB",
    "MAR",
    "APR",
    "MAY",
    "JUN",
    "JUL",
    "AUG",
    "SEP",
    "OCT",
    "NOV",
    "DEC",
  ];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return BaseScreen(
      image: Image.asset(AppAssets.background2, fit: BoxFit.fill),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.1),
            ArrowBack(
              titleScreen: AppLocalizations.of(context)!.reminders,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            /// ArrowBack
            SizedBox(height: height * 0.03),
            CustomMonthList(
                 monthList:monthList,
              easyInfiniteDateTimelineController:
                  easyInfiniteDateTimelineController,
              selectedMonth: selectedMonthAndDate,
            ),
            /// CustomMonthList
            SizedBox(height: height * 0.01),
            CustomDayList(
              easyInfiniteDateTimelineController:
                  easyInfiniteDateTimelineController,
              selectedDate: selectedMonthAndDate,
              onDateChange: onDateChange,
            ),
           /// CustomDayList
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// timeString
                  Padding(
                    padding: const EdgeInsets.only(top: 6, left: 6),
                    child: Text(
                      AppLocalizations.of(context)!.time,
                      style: AppStyles.regularBlack15,
                    ),
                  ),
               /// MedicineHeader
               MedicineHeader(),
                  /// ReminderTimeList,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// ReminderTimeList
                      ReminderTimeList(timeList: timeList),
                      Container(
                        margin: EdgeInsets.only(left: 8),
                        color: AppColors.primary,
                        height: height * 0.5,
                        width: 1,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.topCenter,
                                  height: height * 0.5,
                                  width: width * 0.7,
                                  child: ListView.builder(
                                    padding: EdgeInsets.zero,
                                    itemCount: myReminderModelClass.length,
                                    itemBuilder: (context, index) =>
                                        ReminderMedicineCard(
                                          reminderModelClass:
                                              myReminderModelClass[index],
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onDateChange(DateTime newDate) {
    setState(() {
      selectedMonthAndDate = newDate;
    });
  }
}
