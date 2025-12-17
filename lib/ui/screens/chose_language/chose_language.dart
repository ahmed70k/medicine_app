import 'package:flutter/material.dart';
import 'package:medicine_app/l10n/app_localizations.dart';
import 'package:medicine_app/ui/custom_widget/action_button/action_button.dart';
import 'package:medicine_app/ui/custom_widget/arrow_back/arrow_back.dart';
import 'package:medicine_app/ui/custom_widget/base_screen/base_screen.dart';
import 'package:medicine_app/ui/screens/chose_language/language_list.dart';
import 'package:medicine_app/ui/screens/welcome_screen/welcome_screen.dart';
import 'package:medicine_app/ui/utils/app_assets/app_assets.dart';
import 'package:medicine_app/ui/utils/app_styles/app_styles.dart';

class ChoseLanguage extends StatefulWidget {
  static const String routeName = "ChoseLanguage";
  const ChoseLanguage({super.key});

  @override
  State<ChoseLanguage> createState() => _ChoseLanguageState();
}

class _ChoseLanguageState extends State<ChoseLanguage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return BaseScreen(
      image: Image.asset(AppAssets.appBackgroundImage, fit: BoxFit.fill),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ArrowBack(),
          LanguageList(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 82),
            child: ActionButton(
              borderRadius: 16,
              onTap: () {
                Navigator.pushNamed(context, WelcomeScreen.routeName);
              },
              text: Center(
                child: Text(
                  AppLocalizations.of(context)!.get_started,
                  style: AppStyles.semiBoldWhit20,
                ),
              ),
            ),
          ),
          SizedBox(height: height * 0.3 / 3),
        ],
      ),
    );
  }
}
