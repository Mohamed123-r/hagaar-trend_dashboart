import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hagaar_trend_dashboard/components/app_button.dart';
import 'package:hagaar_trend_dashboard/components/show_data_widget.dart';

import '../../../components/app_alert_dialog.dart';
import '../../../components/app_colors.dart';
import '../../../components/app_form_filed.dart';
import '../../../constant.dart';
import '../../../generated/assets.dart';
import 'edit_profile.dart';

class ShowProfileData extends StatelessWidget {
  const ShowProfileData({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        spacing: 16,
        children: [
          Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                image: NetworkImage(
                  "https://www.w3schools.com/w3images/avatar2.png",
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(200),
            ),
          ),

          ShowData(title: "الإسم :", value: "Ahmed Mohammed Ali"),
          ShowData(title: "رقم الهاتف :", value: "01243567890433"),
          ShowData(title: "الإسم :كلمة المرور :", value: "********"),
          Spacer(),
          AppButton2(
            text: "تعديل بيانات الحساب",
            onPressed: () {
              showDialog(
                context: context,

                builder:
                    (context) => AppAlertDialog(
                      title: "تعديل بيانات الحساب",
                      body: EditProfile(),
                    ),
              );
            },
          ),
        ],
      ),
    );
  }
}
