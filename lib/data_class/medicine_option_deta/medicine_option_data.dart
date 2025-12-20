import 'package:flutter/cupertino.dart';
import 'package:medicine_app/l10n/app_localizations.dart';
import 'package:medicine_app/ui/screens/contents_screen/option_screen/add_new_medicine_screen.dart';
import 'package:medicine_app/ui/screens/contents_screen/option_screen/invite_screen.dart';
import 'package:medicine_app/ui/screens/contents_screen/option_screen/progress_screen.dart';
import 'package:medicine_app/ui/screens/contents_screen/option_screen/received_advices_screen.dart';
import 'package:medicine_app/ui/screens/contents_screen/option_screen/reminders_screen.dart';
import 'package:medicine_app/ui/screens/contents_screen/option_screen/schedule_screen.dart';
import 'package:medicine_app/ui/utils/app_assets/app_assets.dart';

class MedicineOptionModelData {
  final String title;
  final String supTitle;
  final String imageIcon;
  final Widget screenType;
  MedicineOptionModelData({
    required this.title,
    required this.supTitle,
    required this.screenType,
    required this.imageIcon,
  });
  // static const List<Widget> optionScreen = [
  //   ProgressScreen(),
  //   RemindersScreen(),
  //   ReceivedAdvicesScreen(),
  //   MissedMedicinesScreen(),
  //   InviteScreen(),
  //   ScheduleScreen(),
  //   AddNewMedicineScreen(),
  //
  // ];
  /// i ned to list from MedicineOptionData
  static List<MedicineOptionModelData> medicineOptionData(BuildContext context) {
    return [
      MedicineOptionModelData(
        title: AppLocalizations.of(context)!.add_new_medicine,
        supTitle: AppLocalizations.of(context)!.add_your_medication,
        screenType: AddNewMedicineScreen(),
        imageIcon: AppAssets.progress,
      ),
      MedicineOptionModelData(
        title: AppLocalizations.of(context)!.schedule_dose,
        supTitle: AppLocalizations.of(context)!.schedule_reminders,
        screenType: ScheduleScreen(),
          imageIcon: AppAssets.invite,
      ),
      MedicineOptionModelData(
          title: AppLocalizations.of(context)!.reminders,
      supTitle: AppLocalizations.of(context)!.reminders_description,
      screenType: RemindersScreen(),
          imageIcon: AppAssets.reminders,
      ),
      MedicineOptionModelData(
        title: AppLocalizations.of(context)!.progress,
        supTitle: AppLocalizations.of(context)!.progress_description,
        screenType: ProgressScreen(),
        imageIcon: AppAssets.progress,
      ),
      MedicineOptionModelData(
        title: AppLocalizations.of(context)!.invite_friends,
        supTitle: AppLocalizations.of(context)!.invite_family_and_doctors,
        screenType: InviteScreen(),
        imageIcon: AppAssets.invite,
      ),
      MedicineOptionModelData(
        title: AppLocalizations.of(context)!.received_advice,
        supTitle: AppLocalizations.of(context)!.received_description,
        screenType: ReceivedAdvicesScreen(),
        imageIcon: AppAssets.received,
      ),
    ];
  }

}
