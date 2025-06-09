import 'package:flutter/material.dart';
import 'package:hagaar_trend_dashboard/components/app_alert_dialog.dart';
import 'package:hagaar_trend_dashboard/components/app_button.dart';
import 'package:hagaar_trend_dashboard/constant.dart';
import 'package:hagaar_trend_dashboard/generated/assets.dart';

import '../../../components/app_colors.dart';
import '../../../components/app_text_styles.dart';
import '../../../components/show_data_widget.dart';

class BankerDataSection extends StatelessWidget {
  const BankerDataSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      mainAxisAlignment: MainAxisAlignment.start,

      children: [
        Container(
          width: 230,
          height: 230,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: Border.all(width: 1, color: AppColors.border),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(320),
            child: Image.asset(
              width: 230,
              height: 230,
              fit: BoxFit.cover,
              Assets.imagesTest4,
            ),
          ),
        ),
        const SizedBox(),

        ShowData(title: "إسم البنك :", value: "بنك STC السعودي"),

        ShowData(title: "المدينة التابع لها :", value: "الرياض"),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppButton2(
              isMinWidth: true,
              color: AppColors.greenDark,
              text: "تفعيل البنك",
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AppAlertDialog2(
                    title: "تم تفعيل البنك في النظام",
                    onPressedOk: () {
                      Navigator.pop(context);
                    },
                  ),
                );
              },
            ),
            AppButton2(
              isMinWidth: true,
              text: "إيقاف تفعيل البنك",
              onPressed: () {
                showDialog(context: context, builder:
                    (context) =>
                    AppAlertDialog2(title: "تم إيقاف تفعيل البنك من النظام",
                        onPressedOk: (){
                          Navigator.pop(context);
                        }),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
