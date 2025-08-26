import 'package:flutter/material.dart';
import 'package:hagaar_trend_dashboard/views/auth/widgets/section_image_login.dart';
import 'package:hagaar_trend_dashboard/views/auth/widgets/section_input_login.dart';
import '../../constant.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Scaffold(
        body: Row(children: [SectionInputInLogin(), SectionImageInLogin()]),
      ),
    );
  }
}
