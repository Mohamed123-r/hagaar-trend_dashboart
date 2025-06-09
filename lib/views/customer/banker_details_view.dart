import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hagaar_trend_dashboard/components/show_data_widget.dart';
import 'package:hagaar_trend_dashboard/constant.dart';
import 'package:hagaar_trend_dashboard/views/customer/widgets/banker_data_section.dart';
import 'package:hagaar_trend_dashboard/views/customer/widgets/banker_deals_section.dart';
import 'package:hagaar_trend_dashboard/views/customer/widgets/customer_data_section.dart';
import 'package:hagaar_trend_dashboard/views/customer/widgets/customer_deals_item.dart';
import 'package:hagaar_trend_dashboard/views/customer/widgets/customer_deals_section.dart';
import 'package:hagaar_trend_dashboard/views/customer/widgets/office_data_section.dart';

import '../../components/app_colors.dart';
import '../../components/app_text_styles.dart';
import '../../components/list_item.dart';
import '../../generated/assets.dart';

class BankerDetailsView extends StatelessWidget {
  BankerDetailsView({super.key, required this.onTapItem});

  final Function() onTapItem;
  final List<Map<String, String>> users = [
    {
      "name": "Mohammed Hassan",
      "phone": "+966 3245678129",
      "image": "https://randomuser.me/api/portraits/men/1.jpg",
    },
    {
      "name": "Ahmed Saleh",
      "phone": "+966 567123456",
      "image": "https://randomuser.me/api/portraits/men/2.jpg",
    },
    {
      "name": "Omar Khaled",
      "phone": "+966 789345678",
      "image": "https://randomuser.me/api/portraits/men/3.jpg",
    },
    {
      "name": "Hassan Mohammed",
      "phone": "+966 901567890",
      "image": "https://randomuser.me/api/portraits/men/4.jpg",
    },
    {
      "name": "Yousef Ali",
      "phone": "+966 234789012",
      "image": "https://randomuser.me/api/portraits/men/5.jpg",
    },
    {
      "name": "Khalid Noor",
      "phone": "+966 456901234",
      "image": "https://randomuser.me/api/portraits/men/6.jpg",
    },
    {
      "name": "Nasser Ibrahim",
      "phone": "+966 678123456",
      "image": "https://randomuser.me/api/portraits/men/7.jpg",
    },
    {
      "name": "Mohammed Hassan",
      "phone": "+966 3245678129",
      "image": "https://randomuser.me/api/portraits/men/1.jpg",
    },
    {
      "name": "Ahmed Saleh",
      "phone": "+966 567123456",
      "image": "https://randomuser.me/api/portraits/men/2.jpg",
    },
    {
      "name": "Omar Khaled",
      "phone": "+966 789345678",
      "image": "https://randomuser.me/api/portraits/men/3.jpg",
    },
    {
      "name": "Hassan Mohammed",
      "phone": "+966 901567890",
      "image": "https://randomuser.me/api/portraits/men/4.jpg",
    },
    {
      "name": "Yousef Ali",
      "phone": "+966 234789012",
      "image": "https://randomuser.me/api/portraits/men/5.jpg",
    },
    {
      "name": "Khalid Noor",
      "phone": "+966 456901234",
      "image": "https://randomuser.me/api/portraits/men/6.jpg",
    },
    {
      "name": "Nasser Ibrahim",
      "phone": "+966 678123456",
      "image": "https://randomuser.me/api/portraits/men/7.jpg",
    },
    {
      "name": "Mohammed Hassan",
      "phone": "+966 3245678129",
      "image": "https://randomuser.me/api/portraits/men/1.jpg",
    },
    {
      "name": "Ahmed Saleh",
      "phone": "+966 567123456",
      "image": "https://randomuser.me/api/portraits/men/2.jpg",
    },
    {
      "name": "Omar Khaled",
      "phone": "+966 789345678",
      "image": "https://randomuser.me/api/portraits/men/3.jpg",
    },
    {
      "name": "Hassan Mohammed",
      "phone": "+966 901567890",
      "image": "https://randomuser.me/api/portraits/men/4.jpg",
    },
    {
      "name": "Yousef Ali",
      "phone": "+966 234789012",
      "image": "https://randomuser.me/api/portraits/men/5.jpg",
    },
    {
      "name": "Khalid Noor",
      "phone": "+966 456901234",
      "image": "https://randomuser.me/api/portraits/men/6.jpg",
    },
    {
      "name": "Nasser Ibrahim",
      "phone": "+966 678123456",
      "image": "https://randomuser.me/api/portraits/men/7.jpg",
    },
    {
      "name": "Tariq Salman",
      "phone": "+966 890345678",
      "image": "https://randomuser.me/api/portraits/men/8.jpg",
    },
    {
      "name": "Adel Hussein",
      "phone": "+966 123567890",
      "image": "https://randomuser.me/api/portraits/men/9.jpg",
    },
    {
      "name": "Bashar Zaid",
      "phone": "+966 345789012",
      "image": "https://randomuser.me/api/portraits/men/10.jpg",
    },
    {
      "name": "Othman Sami",
      "phone": "+966 567901234",
      "image": "https://randomuser.me/api/portraits/men/11.jpg",
    },
    {
      "name": "Hassan Mohammed",
      "phone": "+966 901567890",
      "image": "https://randomuser.me/api/portraits/men/4.jpg",
    },
    {
      "name": "Yousef Ali",
      "phone": "+966 234789012",
      "image": "https://randomuser.me/api/portraits/men/5.jpg",
    },
    {
      "name": "Khalid Noor",
      "phone": "+966 456901234",
      "image": "https://randomuser.me/api/portraits/men/6.jpg",
    },
    {
      "name": "Nasser Ibrahim",
      "phone": "+966 678123456",
      "image": "https://randomuser.me/api/portraits/men/7.jpg",
    },
    {
      "name": "Tariq Salman",
      "phone": "+966 890345678",
      "image": "https://randomuser.me/api/portraits/men/8.jpg",
    },
    {
      "name": "Adel Hussein",
      "phone": "+966 123567890",
      "image": "https://randomuser.me/api/portraits/men/9.jpg",
    },
    {
      "name": "Bashar Zaid",
      "phone": "+966 345789012",
      "image": "https://randomuser.me/api/portraits/men/10.jpg",
    },
    {
      "name": "Othman Sami",
      "phone": "+966 567901234",
      "image": "https://randomuser.me/api/portraits/men/11.jpg",
    },
    {
      "name": "Hassan Mohammed",
      "phone": "+966 901567890",
      "image": "https://randomuser.me/api/portraits/men/4.jpg",
    },
    {
      "name": "Yousef Ali",
      "phone": "+966 234789012",
      "image": "https://randomuser.me/api/portraits/men/5.jpg",
    },
    {
      "name": "Khalid Noor",
      "phone": "+966 456901234",
      "image": "https://randomuser.me/api/portraits/men/6.jpg",
    },
    {
      "name": "Nasser Ibrahim",
      "phone": "+966 678123456",
      "image": "https://randomuser.me/api/portraits/men/7.jpg",
    },
    {
      "name": "Tariq Salman",
      "phone": "+966 890345678",
      "image": "https://randomuser.me/api/portraits/men/8.jpg",
    },
    {
      "name": "Adel Hussein",
      "phone": "+966 123567890",
      "image": "https://randomuser.me/api/portraits/men/9.jpg",
    },
    {
      "name": "Bashar Zaid",
      "phone": "+966 345789012",
      "image": "https://randomuser.me/api/portraits/men/10.jpg",
    },
    {
      "name": "Othman Sami",
      "phone": "+966 567901234",
      "image": "https://randomuser.me/api/portraits/men/11.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(flex: 1, child: CustomerDataSection()),
            // Left: Deals
            const SizedBox(width: 24),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  border: Border.all(width: 1, color: AppColors.border),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "طلبات سلفة تم قبولها :",
                      style: AppTextStyles.style24W700(context),
                    ),
                    const SizedBox(height: 24),
                    Expanded(
                      child: GridView.count(
                        padding: EdgeInsets.zero,
                        crossAxisCount: 4,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,

                        children: List.generate(users.length, (index) {
                          return InkWell(
                            borderRadius: BorderRadius.circular(32),
                            onTap: onTapItem,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32),
                                border: Border.all(width: 1, color: AppColors.border),
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
                                      border: Border.all(color: AppColors.border),
                                    ),
                                    child: Center(
                                      child:
                                       ClipRRect(
                                        borderRadius: BorderRadius.circular(320),
                                        child: Image.network(
                                          users[index]['image']!,
                                          width: 62,
                                          height: 62,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(users[index]['name']!, style: AppTextStyles.style16W400(context)),
                                  SizedBox(height: 4),
                                  Text(
                                    users[index]['phone']!,
                                    style: AppTextStyles.style16W400(
                                      context,
                                    ).copyWith(color: AppColors.grey),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
