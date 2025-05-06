import 'package:flutter/material.dart';
import 'package:hagaar_trend_dashboard/constant.dart';

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
              child: Image.network(
                width: 230,
                height: 230,
                fit: BoxFit.cover,
                "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              ),
            ),
          ),
          const SizedBox(),
          Text(userType=="company"? "شركة : الريال للعقارات" :"مكتب : عقارك الامن", style: AppTextStyles.style24W400(context)),
          Text(
            "الرياض - م: الزهور",
            style: AppTextStyles.style20W400(
              context,
            ).copyWith(color: AppColors.grey),
          ),
          const SizedBox(height: 8),
          ShowData(title: "إسم مالك المكتب :", value: "محمد علي عبد القادر"),
          ShowData(title:userType=="company"?"اسم الشركة :" : "إسم المكتب :", value: "عقارك الامن"),
          ShowData(title: "رقم الهاتف", value: "+20 010837654322"),
          ShowData(
            title: "نوع العضوية",
            value:
            userType == 'company'
                ? "شركة عقارات"
                : userType == 'owner'
                ? "مكتب عقارات"
                : "",
          ),
          ShowData(title: "المدينة", value: "الرياض"),
          ShowData(title: "المنطقة", value: "الرياض"),
          ShowData(title: "1324567890-2", value: "رقم السجل التجاري :"),
          ShowData(title: "1324567890-2", value: "رقم رخصة نفاذ :"),
          ShowData(title: "1324567890-2", value: "رقم رخصة فال :"),
        ],
      ),
    );
  }
}
