

import 'package:flutter/material.dart';
import 'package:golf_app/config/app_routes.dart';
import 'package:golf_app/pages/edit_porfile_page.dart';
import 'package:golf_app/pages/home_page.dart';
import 'package:golf_app/pages/log_in.dart';
import 'package:golf_app/pages/main_page.dart';
import 'package:golf_app/styles/app_colors.dart';

void main() {
  runApp(
    MyApp(),
     );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark
      ), 
      initialRoute: Approutes.login,
      routes: Approutes.pages,
  );
  }

}

