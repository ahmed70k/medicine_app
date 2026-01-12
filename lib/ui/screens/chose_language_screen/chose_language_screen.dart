import 'package:flutter/material.dart';
import 'package:medicine_app/l10n/app_localizations.dart';
import 'package:medicine_app/ui/screens/welcome_screen/welcome_screen.dart';
import 'package:medicine_app/ui/utils/app_assets/app_assets.dart';
import 'package:medicine_app/ui/utils/app_styles/app_styles.dart';
import '../../custom_widgets/action_button/action_button.dart';
import '../../custom_widgets/arrow_back/arrow_back.dart';
import '../../custom_widgets/base_screen/base_screen.dart';
import 'language_list.dart';

class ChoseLanguageScreen extends StatefulWidget {
  static const String routeName = "ChoseLanguage";
  const ChoseLanguageScreen({super.key});

  @override
  State<ChoseLanguageScreen> createState() => _ChoseLanguageState();
}

class _ChoseLanguageState extends State<ChoseLanguageScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return BaseScreen(
      image: Image.asset(AppAssets.appBackgroundImage, fit: BoxFit.fill),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height * 0.1,),
          ArrowBack(
            titleScreen: "",
            onPressed: (){
            Navigator.pop(context);
          },),
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
