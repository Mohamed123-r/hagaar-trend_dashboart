import 'package:flutter/material.dart';
import 'package:hagaar_trend_dashboard/constant.dart';

import '../../../components/app_colors.dart';
import '../../../components/app_text_styles.dart';
import '../../../components/show_data_widget.dart';

class CustomerDataSection extends StatelessWidget {
  const CustomerDataSection({super.key});

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
          Text(
            "Mohammed Hassan Ali",
            style: AppTextStyles.style24W400(context),
          ),
          Text(
            userType == 'customer'
                ? "مستخدم للتطبيق"
                : userType == 'owner'
                ? "مالك عقارات"
                : userType == 'agent'
                ? "مسوق عقاري"
                : "",
            style: AppTextStyles.style20W400(
              context,
            ).copyWith(color: AppColors.grey),
          ),
          const SizedBox(height: 8),
          ShowData(title: "رقم الهاتف :", value: "+20 010837654322"),
          ShowData(
            title: "نوع العضوية :",
            value:
                userType == 'customer'
                    ? "مستخدم للتطبيق"
                    : userType == 'owner'
                    ? "مالك عقارات"
                    : userType == 'agent'
                    ? "مسوق عقاري"
                    : "",
          ),
          ShowData(title: "المدينة :", value: "الرياض"),
          ShowData(title: "المنطقة :", value: "الرياض"),
          ShowData(title: "الحي :", value: "الرياض"),
        ],
      ),
    );
  }
}
