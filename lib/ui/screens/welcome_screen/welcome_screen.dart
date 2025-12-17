import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicine_app/l10n/app_localizations.dart';
import 'package:medicine_app/ui/custom_widget/action_button/action_button.dart';
import 'package:medicine_app/ui/custom_widget/arrow_back/arrow_back.dart';
import 'package:medicine_app/ui/custom_widget/base_screen/base_screen.dart';
import 'package:medicine_app/ui/screens/authentication/login_screen/login_screen.dart';
import 'package:medicine_app/ui/screens/authentication/signup_screen/signup_screen.dart';
import 'package:medicine_app/ui/utils/app_assets/app_assets.dart';
import 'package:medicine_app/ui/utils/app_styles/app_styles.dart';

class WelcomeScreen extends StatelessWidget {
  static const String routeName = "WelcomeScreen";
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    Widget image = Image.asset(AppAssets.appBackgroundImage, fit: BoxFit.fill);
    return BaseScreen(
      image: Image.asset(AppAssets.appBackgroundImage, fit: BoxFit.fill),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ArrowBack(),
          SizedBox(height: height * 0.02),
          Stack(
            alignment: Alignment.center,
            children: [
              Center(child: SvgPicture.asset(AppAssets.logoScreens)),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 12),
                child: SvgPicture.asset(AppAssets.hour),
              ),
            ],
          ),
          SizedBox(height: height * 0.01),
          Center(
            child: Text(
              AppLocalizations.of(context)!.medi_cue,
              style: AppStyles.semiBoldSecondary24,
            ),
          ),
          SizedBox(height: height * 0.01),
          Image.asset(
            AppAssets.medicalCare,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          SizedBox(height: height * 0.06),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.only(start: 24, end: 1),
                  child: ActionButton(
                    onTap: () {
                      Navigator.pushNamed(context, LoginScreen.routeName);
                    },
                    text: Center(
                      child: Text(
                        AppLocalizations.of(context)!.log_in,
                        style: AppStyles.semiBoldWhit20,
                      ),
                    ),
                    borderRadius: 50,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.only(start: 1, end: 24),
                  child: ActionButton(
                    onTap: () {
                      Navigator.pushNamed(context, SignupScreen.routeName);
                    },
                    text: Center(
                      child: Text(
                        AppLocalizations.of(context)!.sign_up,
                        style: AppStyles.semiBoldWhit20,
                      ),
                    ),
                    borderRadius: 50,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
