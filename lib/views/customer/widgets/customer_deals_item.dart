import 'package:flutter/material.dart';

import '../../../components/app_colors.dart';
import '../../../components/app_text_styles.dart';
import '../../../generated/assets.dart';

class CustomerDealsItem extends StatelessWidget {
  const CustomerDealsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: AppColors.border),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "عمارة المعماري المريندي\nمدينة الرياض - منطقة الشارقة",
                  style: AppTextStyles.style16W400(context),
                ),
                Spacer(),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text("السعر : ", style: AppTextStyles.style16W400(context)),
                    Text(
                      " 243 ألف ريال",
                      style: AppTextStyles.style16W400(
                        context,
                      ).copyWith(color: AppColors.greenDark),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "العمولة : ",
                      style: AppTextStyles.style16W400(context),
                    ),
                    Text(
                      " 20 ألف ريال",
                      style: AppTextStyles.style16W400(
                        context,
                      ).copyWith(color: AppColors.greenDark),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Image.asset(
            Assets.imagesTest,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
