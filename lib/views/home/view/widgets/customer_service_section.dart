import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import '../../../../components/app_colors.dart';
import '../../../../components/app_text_styles.dart';
import '../../../../generated/assets.dart';

class CustomerServiceSection extends StatelessWidget {
  const CustomerServiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFFF4D8) ,
        borderRadius: BorderRadius.circular(32),
        border: Border.all(
          width: 1,
          color: AppColors.border,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 16,
            ),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.greenDark,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      Assets.imagesHeadset,
                      color: AppColors.white,
                      width: 20,
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Text(
                  'خدمة العملاء',
                  style: AppTextStyles.style20W400(context),
                ),
              ],
            ),
          ),
          Text(
            '3',
            style: AppTextStyles.style48W400(context),
          ),
          Text(
            'رسالة للعملاء',
            style: AppTextStyles.style18W400(context),
          ),
        ],
      ),
    );
  }
}
