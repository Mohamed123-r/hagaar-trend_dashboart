import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../components/app_alert_dialog.dart';
import '../../../../components/app_colors.dart';
import '../../../../components/app_text_styles.dart';
import '../../../../components/list_item.dart';
import '../../../../components/list_item_hor.dart';
import '../../../../components/show_data_widget.dart';
import '../../../../constant.dart';
import '../../../../generated/assets.dart';

class ShowDataOfLandPurchaseRequests extends StatelessWidget {
  ShowDataOfLandPurchaseRequests({super.key});

  final List<Map<String, String>> users = [
    {
      "name": "Mohammed Hassan",
      "phone": "+966 3245678129",
      "image": "https://randomuser.me/api/portraits/men/1.jpg",
      "type": "مالك عقار",
    },
    {
      "name": "Ahmed Saleh",
      "phone": "+966 567123456",
      "image": "https://randomuser.me/api/portraits/men/2.jpg",
      "type": "مسوق عقار",
    },
    {
      "name": "Omar Khaled",
      "phone": "+966 789345678",
      "image": "https://randomuser.me/api/portraits/men/3.jpg",
      "type": "مكتب عقار",
    },
    {
      "name": "Hassan Mohammed",
      "phone": "+966 901567890",
      "image": "https://randomuser.me/api/portraits/men/4.jpg",
      "type": "مكتب عقار",
    },
    {
      "name": "Yousef Ali",
      "phone": "+966 234789012",
      "image": "https://randomuser.me/api/portraits/men/5.jpg",
      "type": "مكتب عقار",
    },
    {
      "name": "Khalid Noor",
      "phone": "+966 456901234",
      "image": "https://randomuser.me/api/portraits/men/6.jpg",
      "type": "مكتب عقار",
    },
    {
      "name": "Nasser Ibrahim",
      "phone": "+966 678123456",
      "image": "https://randomuser.me/api/portraits/men/7.jpg",
      "type": "مكتب عقار",
    },
    {
      "name": "Mohammed Hassan",
      "phone": "+966 3245678129",
      "image": "https://randomuser.me/api/portraits/men/1.jpg",
      "type": "مكتب عقار",
    },
    {
      "name": "Ahmed Saleh",
      "phone": "+966 567123456",
      "image": "https://randomuser.me/api/portraits/men/2.jpg",
      "type": "مكتب عقار",
    },
    {
      "name": "Omar Khaled",
      "phone": "+966 789345678",
      "image": "https://randomuser.me/api/portraits/men/3.jpg",
      "type": "مكتب عقار",
    },
    {
      "name": "Hassan Mohammed",
      "phone": "+966 901567890",
      "image": "https://randomuser.me/api/portraits/men/4.jpg",
      "type": "مكتب عقار",
    },
    {
      "name": "Yousef Ali",
      "phone": "+966 234789012",
      "image": "https://randomuser.me/api/portraits/men/5.jpg",
      "type": "مكتب عقار",
    },
    {
      "name": "Khalid Noor",
      "phone": "+966 456901234",
      "image": "https://randomuser.me/api/portraits/men/6.jpg",
      "type": "مكتب عقار",
    },
    {
      "name": "Nasser Ibrahim",
      "phone": "+966 678123456",
      "image": "https://randomuser.me/api/portraits/men/7.jpg",
      "type": "مكتب عقار",
    },
    {
      "name": "Mohammed Hassan",
      "phone": "+966 3245678129",
      "image": "https://randomuser.me/api/portraits/men/1.jpg",
      "type": "مكتب عقار",
    },
    {
      "name": "Ahmed Saleh",
      "phone": "+966 567123456",
      "image": "https://randomuser.me/api/portraits/men/2.jpg",
      "type": "مكتب عقار",
    },
    {
      "name": "Omar Khaled",
      "phone": "+966 789345678",
      "image": "https://randomuser.me/api/portraits/men/3.jpg",
      "type": "مكتب عقار",
    },
    {
      "name": "Hassan Mohammed",
      "phone": "+966 901567890",
      "image": "https://randomuser.me/api/portraits/men/4.jpg",
      "type": "مكتب عقار",
    },
    {
      "name": "Yousef Ali",
      "phone": "+966 234789012",
      "image": "https://randomuser.me/api/portraits/men/5.jpg",
      "type": "مكتب عقار",
    },
    {
      "name": "Khalid Noor",
      "phone": "+966 456901234",
      "image": "https://randomuser.me/api/portraits/men/6.jpg",
      "type": "مكتب عقار",
    },
    {
      "name": "Nasser Ibrahim",
      "phone": "+966 678123456",
      "image": "https://randomuser.me/api/portraits/men/7.jpg",
      "type": "مكتب عقار",
    },
    {
      "name": "Tariq Salman",
      "phone": "+966 890345678",
      "image": "https://randomuser.me/api/portraits/men/8.jpg",
      "type": "مكتب عقار",
    },
    {
      "name": "Adel Hussein",
      "phone": "+966 123567890",
      "image": "https://randomuser.me/api/portraits/men/9.jpg",
      "type": "مكتب عقار",
    },
    {
      "name": "Bashar Zaid",
      "phone": "+966 345789012",
      "image": "https://randomuser.me/api/portraits/men/10.jpg",
      "type": "مكتب عقار",
    },
    {
      "name": "Othman Sami",
      "phone": "+966 567901234",
      "image": "https://randomuser.me/api/portraits/men/11.jpg",
      "type": "مكتب عقار",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        border: Border.all(width: 1, color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
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
                    child: SvgPicture.asset(Assets.imagesFarm, width: 20),
                  ),
                ),
                SizedBox(width: 12),
                Text(
                  'طلبات شراء أرض',
                  style: AppTextStyles.style20W400(context),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemBuilder:
                  (context, index) => InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder:
                            (context) => Directionality(
                              textDirection: direction,
                              child: AppAlertDialog(
                                title: "",
                                body: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 32,
                                  ),
                                  child: SizedBox(
                                    height: 800,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        spacing: 16,
                                        children: [
                                          Container(
                                            width: 230,
                                            height: 230,
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                  users[index]["image"]
                                                      .toString(),
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(200),
                                            ),
                                          ),
                                          Text(
                                            users[index]["name"].toString(),
                                            style: AppTextStyles.style24W400(
                                              context,
                                            ),
                                          ),
                                          Text(
                                            "مستخدم للتطبيق",
                                            //ال case هنا بتتغير بناء علي مين اللي طلب هنا من العضويات
                                            style: AppTextStyles.style20W400(
                                              context,
                                            ).copyWith(color: AppColors.grey),
                                          ),
                                          ShowData(
                                            title: "رقم الهاتف :",
                                            value: "+20 0108376543222",
                                          ),
                                          ShowData(
                                            title: "السعر :",
                                            value:
                                                "132 الف ريال  :  300 ألف ريال",
                                          ),
                                          ShowData(
                                            title: "نوع الأرض :",
                                            value: "سكنية",
                                          ),
                                          ShowData(
                                            title: "المدينة :",
                                            value: "الرياض",
                                          ),
                                          ShowData(
                                            title: "المنطقة :",
                                            value: "الرياض",
                                          ),
                                          // Remove the Spacer() here
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                      );
                    },
                    child: ListItemHor(users: users[index]),
                  ),
              itemCount: users.length,
            ),
          ),
        ],
      ),
    );
  }
}
