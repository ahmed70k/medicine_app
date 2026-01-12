import 'package:flutter/material.dart';
import 'package:medicine_app/l10n/app_localizations.dart';
import 'package:medicine_app/ui/utils/app_assets/app_assets.dart';
import 'package:medicine_app/ui/utils/app_styles/app_styles.dart';
import '../../../../custom_widgets/action_button/action_button.dart';
import '../../../../custom_widgets/arrow_back/arrow_back.dart';
import '../../../../custom_widgets/base_screen/base_screen.dart';
import 'widgets/custom_daily_column.dart';
import 'widgets/schedule_item_card.dart';
import '../../../../utils/app_colors/app_colors.dart';

class ScheduleScreen extends StatelessWidget {
  static const String routeName = "ScheduleScreen";
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return BaseScreen(
      image: Image.asset(AppAssets.background2, fit: BoxFit.fill),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.1),
                ArrowBack(
                  titleScreen: AppLocalizations.of(context)!.schedule_dose,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
            SizedBox(height: height * 0.02),
            Text(
              AppLocalizations.of(
                context,
              )!.what_time_in_the_day_do_you_want_to_take_it,
              style: AppStyles.regularBlack12,
            ),
            SizedBox(height: height * 0.02),
            ScheduleItemCard(),
            Row(
              children: [
                buildTimeAlarmContainer(width, height, "8am"),
                buildTimeAlarmContainer(width, height, "10am"),
              ],
            ),
            SizedBox(height: height * 0.02),
            CustomDailyColumn(
              textDose: AppLocalizations.of(
                context,
              )!.how_often_is_this_dose_taken,
              leadingRow: Text(
                AppLocalizations.of(context)!.everyday,
                style: AppStyles.mediumBlack18,
              ),
              actionRow: Icon(Icons.menu, size: 28),
            ),
            CustomDailyColumn(
              textDose: AppLocalizations.of(
                context,
              )!.how_many_pills_are_taken_in_each_dose,
              leadingRow: buildCounterButton(
                Icon(Icons.remove, size: 24, color: AppColors.white),
              ),
              counter: "3",
              actionRow: buildCounterButton(
                Icon(Icons.add, size: 24, color: AppColors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: ActionButton(
                onTap: () {
                  /// Save The Counter
                },
                text: Text(
                  AppLocalizations.of(context)!.save,
                  style: AppStyles.boldWhite24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildTimeAlarmContainer(double width, double height, String textTime) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      height: height * 0.03,
      width: width * 0.3,
      decoration: BoxDecoration(
        color: AppColors.green2,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.notifications, color: AppColors.secondary),
          Text(textTime),
          Container(
            decoration: BoxDecoration(
              color: AppColors.reed,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                topLeft: Radius.circular(12),
              ),
            ),
            child: Icon(Icons.clear, size: 18, color: AppColors.white),
          ),
        ],
      ),
    );
  }

  buildCounterButton(Icon counter) {
    return InkWell(
      onTap: () {
        /// Counter - && Counter +
        return;
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.secondary,
          borderRadius: BorderRadius.all(Radius.circular(33)),
        ),
        child: counter,
      ),
    );
  }
}
