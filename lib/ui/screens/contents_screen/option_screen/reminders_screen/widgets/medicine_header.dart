import 'package:flutter/material.dart';

import '../../../../../../l10n/app_localizations.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_styles/app_styles.dart';

class MedicineHeader extends StatelessWidget {
  const MedicineHeader({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.only(left: 62, top: 16),
          child: Text(
            AppLocalizations.of(context)!.medicine,
            style: AppStyles.regularBlack15,
          ),
        ),
        SizedBox(width: width * 0.5 / 1.6),
        Container(
          alignment: Alignment.center,
          height: 36,
          width: 62,
          decoration: BoxDecoration(
            color: AppColors.white2,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Text(
            AppLocalizations.of(context)!.all,
            style: AppStyles.regularBlack16,
          ),
        ),
      ],
    );
  }
}
