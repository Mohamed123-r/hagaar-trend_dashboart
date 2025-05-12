import 'package:flutter/material.dart';
import 'package:hagaar_trend_dashboard/constant.dart';
import 'package:hagaar_trend_dashboard/generated/assets.dart';

import '../../../components/app_colors.dart';
import '../../../components/app_text_styles.dart';
import '../../../components/show_data_widget.dart';

class OfficeDataSection extends StatelessWidget {
  const OfficeDataSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 12,
        crossAxisAlignment: CrossAxisAlignment.center,
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
                userType == "company" ? Assets.imagesTest3 : Assets.imagesTest2,
              ),
            ),
          ),
          const SizedBox(),
          Text(
            userType == "company"
                ? "شركة : الريال للعقارات"
                : "مكتب : عقارك الامن",
            style: AppTextStyles.style24W400(context),
          ),
          Text(
            "الرياض - م: الزهور",
            style: AppTextStyles.style20W400(
              context,
            ).copyWith(color: AppColors.grey),
          ),
          const SizedBox(height: 8),
          ShowData(title: "إسم مالك المكتب :", value: "محمد علي عبد القادر"),
          ShowData(
            title: userType == "company" ? "اسم الشركة :" : "إسم المكتب :",
            value: "عقارك الامن",
          ),
          ShowData(title: "رقم الهاتف", value: "+20 010837654322"),
          ShowData(
            title: "نوع العضوية",
            value:
                userType == 'company'
                    ? "شركة عقارات"
                    : userType == 'office'
                    ? "مكتب عقارات"
                    : "",
          ),
          ShowData(title: "المدينة", value: "الرياض"),
          ShowData(title: "المنطقة", value: "الرياض"),
          ShowData(title: "رقم السجل التجاري :", value: "1324567890-2"),
          ShowData(title: "رقم رخصة نفاذ :", value: "1324567890-2"),
          ShowData(title: "رقم رخصة فال :", value: "1324567890-2"),
        ],
      ),
    );
  }
}
