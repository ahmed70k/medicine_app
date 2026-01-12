import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicine_app/l10n/app_localizations.dart';
import 'package:medicine_app/ui/utils/app_assets/app_assets.dart';
import 'package:medicine_app/ui/utils/app_styles/app_styles.dart';
import '../../custom_widgets/action_button/action_button.dart';
import '../../custom_widgets/base_screen/base_screen.dart';
import '../chose_language_screen/chose_language_screen.dart';

class OpeningScreen extends StatelessWidget {
  static const String routeName = "/";
  const OpeningScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return BaseScreen(
      image: Image.asset(AppAssets.appBackgroundImage, fit: BoxFit.fill),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)!.medi_cue,
              style: AppStyles.regularSecondary40,
              textAlign: TextAlign.center,
              maxLines: 3,
            ),
            SizedBox(height: height * 0.01),
            Text(
              AppLocalizations.of(context)!.worry_less_live_healthier,
              textAlign: TextAlign.center,
              maxLines: 3,
              style: AppStyles.semiboldBlack20,
            ),
            SizedBox(height: height * 0.02),
            SvgPicture.asset(AppAssets.logo),
            SizedBox(height: height * 0.03),
            Text(
              AppLocalizations.of(context)!.welcome_to_medi_cue,
              textAlign: TextAlign.center,
              maxLines: 3,
              style: AppStyles.semiboldBlack24,
            ),
            SizedBox(height: height * 0.03),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 44),
              child: ActionButton(
                onTap: () {
                  Navigator.pushNamed(context, ChoseLanguageScreen.routeName);
                },
                text: Text(
                  AppLocalizations.of(context)!.choose_language,
                  style: AppStyles.semiBoldWhit20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
