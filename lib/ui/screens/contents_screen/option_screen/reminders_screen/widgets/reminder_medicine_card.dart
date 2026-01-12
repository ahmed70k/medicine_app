import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicine_app/data_class/reminders_model_data/reminder_model_class.dart';
import 'package:medicine_app/l10n/app_localizations.dart';
import 'package:medicine_app/ui/utils/app_assets/app_assets.dart';
import 'package:medicine_app/ui/utils/app_styles/app_styles.dart';

import '../../../../../utils/app_colors/app_colors.dart';

class ReminderMedicineCard extends StatelessWidget {
  final ReminderModelClass reminderModelClass;
  const ReminderMedicineCard({super.key, required this.reminderModelClass});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(left: 16, top: 12, bottom: 12),
      height: height * 0.2 / 1.4,
      child: Card(
        margin: EdgeInsets.zero,
        color: AppColors.white2,
        shape: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.white2),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 12),
                    child: Image.asset(
                      reminderModelClass.image,
                      height: 44,
                      width: 44,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          reminderModelClass.name,
                          style: AppStyles.mediumBlack16,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          reminderModelClass.dosageLabel,
                          style: AppStyles.mediumBlack14,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      reminderModelClass.time,
                      style: AppStyles.mediumSecondary14,
                    ),
                    reminderModelClass.isTaken
                        ? buildRowTakenAndTakeIt(
                            context,
                            AppAssets.taken,
                            AppLocalizations.of(context)!.taken,
                          )
                        : buildRowTakenAndTakeIt(
                            context,
                            AppAssets.takeIt,
                            AppLocalizations.of(context)!.take_it,
                          ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildRowTakenAndTakeIt(
    BuildContext context,
    String checkTaken,
    String textTaken,
  ) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: SvgPicture.asset(checkTaken, width: 18, height: 18),
        ),
        Text(textTaken, style: AppStyles.mediumSecondary13),
      ],
    );
  }
}
