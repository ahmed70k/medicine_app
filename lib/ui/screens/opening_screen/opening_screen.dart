import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicine_app/ui/custom_widget/action_button/action_button.dart';
import 'package:medicine_app/ui/custom_widget/app_background_image/app_background_image.dart';
import 'package:medicine_app/ui/utils/app_assets/app_assets.dart';
import 'package:medicine_app/ui/utils/app_styles/app_styles.dart';
import '../welcome_screen/welcome_screen.dart';

class OpeningScreen extends StatelessWidget {
  static const String routeName = "/";
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          AppBackgroundImage(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("MediCue", style: AppStyles.regularSecondary40),
              SizedBox(height: height * 0.01),
              Text(
                "Worry less..Live healthier..",
                style: AppStyles.semiBoldPrimary16,
              ),
              SizedBox(height: height * 0.02),
              SvgPicture.asset(AppAssets.logo),
              SizedBox(height: height * 0.06),
              Text("Welcome to MediCue!", style: AppStyles.semiboldBlack24),
              SizedBox(height: height * 0.03),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 88),
                child: ActionButton(
               onTap: () {
                 Navigator.pushNamed(context, WelcomeScreen.routeName);
               },
                  text: Text("Get Started",style: AppStyles.semiBoldWhite30,),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
