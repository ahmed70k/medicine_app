import 'package:flutter/material.dart';
import 'package:medicine_app/ui/screens/authentication/login_screen/login_screen.dart';
import 'package:medicine_app/ui/screens/authentication/signup_screen/signup_screen.dart';
import 'package:medicine_app/ui/screens/opening_screen/opening_screen.dart';
import 'package:medicine_app/ui/screens/welcome_screen/chose_language/chose_language.dart';
import 'package:medicine_app/ui/screens/welcome_screen/welcome_screen.dart';

import 'l10n/app_localizations.dart';
void main (){
runApp(MyApp(),);
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      initialRoute: OpeningScreen.routeName,
      routes: {
        OpeningScreen.routeName:(_)=>OpeningScreen(),
        WelcomeScreen.routeName:(_)=> WelcomeScreen(),
        LoginScreen.routeName:(_)=>LoginScreen(),
        SignupScreen.routeName:(_)=>SignupScreen(),
        ChoseLanguage.routeName:(_)=>ChoseLanguage(),
      },
    );
  }
}
