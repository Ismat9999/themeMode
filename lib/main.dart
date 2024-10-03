import 'package:flutter/material.dart';
import 'package:thememode/pages/home_page.dart';
import 'package:thememode/themes/app_theme.dart';

void main() {
  runApp(const RunMyApp());
}

class RunMyApp extends StatefulWidget{
  const  RunMyApp({super.key});

  @override
  State<StatefulWidget> createState() => _RunMyAppState();

}

class _RunMyAppState  extends State<RunMyApp>{

  ThemeMode themeMode =ThemeMode.light;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.light(useMaterial3: true),
      // darkTheme: ThemeData.dark(useMaterial3: true),
      theme: AppTheme.themeData(false),
      darkTheme: AppTheme.themeData(true),
      title: "ThemeMode (Dark Mode, Light Mode)",
      home: HomePage(),
      themeMode: themeMode,
    );
  }
}





