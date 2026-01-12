import 'package:flutter/material.dart';
import 'package:medicine_app/l10n/app_localizations.dart';
import 'package:medicine_app/ui/screens/contents_screen/contents_screen.dart';
import 'package:medicine_app/ui/utils/app_assets/app_assets.dart';
import 'package:medicine_app/ui/utils/app_styles/app_styles.dart';
import '../../../../custom_widgets/action_button/action_button.dart';
import '../../../../custom_widgets/arrow_back/arrow_back.dart';
import '../../../../custom_widgets/base_screen/base_screen.dart';
import '../../../../custom_widgets/text_form/text_form.dart';
import 'widgets/medication_type.dart';
import '../../../../utils/app_colors/app_colors.dart';

class AddNewMedicineScreen extends StatelessWidget {
  static const String routeName = "AddNewMedicine";
  const AddNewMedicineScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return BaseScreen(
      image: Image.asset(AppAssets.background2, fit: BoxFit.fill),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: height * 0.5 / 4),
                ArrowBack(
                  titleScreen:AppLocalizations.of(context)!.add_new_medicine,
                  onPressed: (){
                  Navigator.pop(context);
                },),
            SizedBox(height: height * 0.04),
            TextForm(
              prefixIcon: Icon(Icons.edit),
              hintText: AppLocalizations.of(context)!.medicine_name,
              hintStyle: TextStyle(fontSize: 16, color: AppColors.primary),
            ),
            SizedBox(height: height * 0.03),
            TextForm(
              prefixIcon: Icon(Icons.edit),
              hintText: AppLocalizations.of(context)!.medicine_dosage,
              hintStyle: TextStyle(fontSize: 16, color: AppColors.primary),
            ),
            SizedBox(height: height * 0.03),
            Text(AppLocalizations.of(context)!.medicine_type, style: AppStyles.semiBoldBlack16),
            SizedBox(height: height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MedicationType(
                  imageType: Image.asset(AppAssets.capsules),
                  medicationName: AppLocalizations.of(context)!.capsules,
                ),
                MedicationType(
                  imageType: Image.asset(AppAssets.injections),
                  medicationName: AppLocalizations.of(context)!.injections,
                ),
                MedicationType(
                  imageType: Image.asset(AppAssets.syrup),
                  medicationName: AppLocalizations.of(context)!.syrup,
                ),
              ],
            ),
            SizedBox(height: height * 0.06),
            ActionButton(
              onTap: () {
                Navigator.pushNamed(context, ContentsScreen.routeName);
              },
              text: Text(
                AppLocalizations.of(context)!.save,
                style: AppStyles.boldWhite24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
