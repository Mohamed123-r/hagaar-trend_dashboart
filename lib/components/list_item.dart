import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';


class ListViewItem extends StatelessWidget {
  const ListViewItem({
    super.key,
    required this.users,
  });

  final Map<String, String> users;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        border: Border.all(
          width: 1,
          color: AppColors.border,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 62,
            height: 62,
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.white,
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.border,
              ),
            ),
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(320),
                child: Image.network(
                  users['image']!,
                  width: 62,
                  height: 62,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            users['name']!,
            style: AppTextStyles.style16W400(context),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            users['phone']!,
            style: AppTextStyles.style16W400(context).copyWith(
              color: AppColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
