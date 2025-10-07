import 'package:flutter/material.dart';
import 'package:medicine_app/ui/screens/opening_screen/opening_screen.dart';
import 'package:medicine_app/ui/screens/welcome_screen/welcome_screen.dart';
void main (){
runApp(MyApp(),);
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: OpeningScreen.routeName,
      routes: {
        OpeningScreen.routeName:(_)=>OpeningScreen(),
        WelcomeScreen.routeName:(_)=> WelcomeScreen(),

      },
    );
  }
}
