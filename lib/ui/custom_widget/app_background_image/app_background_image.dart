import 'package:flutter/material.dart';
import 'package:medicine_app/ui/utils/app_assets/app_assets.dart';

class AppBackgroundImage extends StatelessWidget {
  const AppBackgroundImage({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Image.asset(AppAssets.appBackgroundImage,
      fit: BoxFit.fill,
      ),);
  }
}
