import 'package:flutter/material.dart';
import 'package:medicine_app/providers/language_provider/language_provider.dart';
import 'package:medicine_app/ui/screens/contents_screen/option_screen/add_new_medicine_screen.dart';
import 'package:medicine_app/ui/screens/authentication/login_screen/login_screen.dart';
import 'package:medicine_app/ui/screens/authentication/signup_screen/signup_screen.dart';
import 'package:medicine_app/ui/screens/chose_language_screen/chose_language_screen.dart';
import 'package:medicine_app/ui/screens/contents_screen/contents_screen.dart';
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
      initialRoute: ContentsScreen.routeName,
      routes: {
        OpeningScreen.routeName:(_)=>OpeningScreen(),
        WelcomeScreen.routeName:(_)=> WelcomeScreen(),
        LoginScreen.routeName:(_)=>LoginScreen(),
        SignupScreen.routeName:(_)=>SignupScreen(),
        ChoseLanguageScreen.routeName:(_)=>ChoseLanguageScreen(),
        AddNewMedicineScreen.routeName:(_)=>AddNewMedicineScreen(),
        ContentsScreen.routeName:(_)=>ContentsScreen(),
      },
    );
  }
}
