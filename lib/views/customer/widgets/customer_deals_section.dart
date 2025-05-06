import 'package:flutter/material.dart';

import '../../../components/app_colors.dart';
import '../../../components/app_text_styles.dart';
import 'customer_deals_item.dart';

class CustomerDealsSection extends StatelessWidget {
  const CustomerDealsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        border: Border.all(width: 1, color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "صفقات العميل:",
            style: AppTextStyles.style24W700(context),
          ),
          const SizedBox(height: 24),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.zero,
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 4 / 1.6,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return CustomerDealsItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}
