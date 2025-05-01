import 'package:flutter/material.dart';
import 'package:hagaar_trend_dashboard/views/auth/login_view.dart';
import 'package:hagaar_trend_dashboard/views/main/main_view.dart';

import 'components/app_colors.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Almarai',
        primaryColor: AppColors.black,
        scaffoldBackgroundColor: Color(0xffEDF2ED),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.white,
          surfaceTintColor: AppColors.white,
          elevation: 0,
        ),
      ),
      home: MainView(),

    );
  }
}

