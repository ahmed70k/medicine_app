import 'package:flutter/material.dart';
import 'package:medicine_app/providers/language_provider/language_provider.dart';
import 'package:medicine_app/ui/screens/authentication/login_screen/login_screen.dart';
import 'package:medicine_app/ui/screens/authentication/signup_screen/signup_screen.dart';
import 'package:medicine_app/ui/screens/chose_language/chose_language.dart';
import 'package:medicine_app/ui/screens/opening_screen/opening_screen.dart';
import 'package:medicine_app/ui/screens/welcome_screen/welcome_screen.dart';
import 'package:provider/provider.dart';

import 'l10n/app_localizations.dart';
void main (){
runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create:(_)=> LanguageProvider()),
    ],
    child: MyApp()),);
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var changeLanguageObject = Provider.of<LanguageProvider>(context);
    return MaterialApp(
      locale: Locale(changeLanguageObject.selectedLanguage),
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
