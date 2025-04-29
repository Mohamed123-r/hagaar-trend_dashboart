import 'package:flutter/material.dart';

import 'components/app_colors.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  doWhenWindowReady(() {
    appWindow.minSize = Size(1300, 900);
    appWindow.alignment = Alignment.center;
    appWindow.show();
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

    );
  }
}

