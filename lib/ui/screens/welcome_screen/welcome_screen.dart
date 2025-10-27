import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicine_app/ui/custom_widget/action_button/action_button.dart';
import 'package:medicine_app/ui/custom_widget/base_screen/base_screen.dart';
import 'package:medicine_app/ui/screens/authentication/login_screen/login_screen.dart';
import 'package:medicine_app/ui/screens/authentication/signup_screen/signup_screen.dart';
import 'package:medicine_app/ui/screens/welcome_screen/chose_language/chose_language.dart';
import 'package:medicine_app/ui/utils/app_assets/app_assets.dart';
import 'package:medicine_app/ui/utils/app_colors/app_colors.dart';
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
        children: [
          SizedBox(height: height * 0.5 / 3),
          buildChoseLanguage(height, context),
          SizedBox(height: height * 0.04),
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
                  padding: const EdgeInsets.only(left: 24, right: 1),
                  child: ActionButton(
                    onTap: () {
                      Navigator.pushNamed(context, LoginScreen.routeName);
                    },
                    text: Center(
                      child: Text("Login", style: AppStyles.semiBoldWhit20),
                    ),
                    borderRadius: 50,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 24, left: 1),
                  child: ActionButton(
                    onTap: () {
                      Navigator.pushNamed(context, SignupScreen.routeName);
                    },
                    text: Center(
                      child: Text("SignUp", style: AppStyles.semiBoldWhit20),
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

  Container buildChoseLanguage(double height, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 46),
      height: height * 0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        border: Border.all(color: AppColors.primary, width: 1),
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, ChoseLanguage.routeName);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Chose Language ", style: AppStyles.semiboldPrimary20),
            SvgPicture.asset(AppAssets.arrowDown),
          ],
        ),
      ),
    );
  }
}
