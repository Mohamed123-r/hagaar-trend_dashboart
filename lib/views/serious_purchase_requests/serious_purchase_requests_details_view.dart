import 'package:flutter/material.dart';

import '../../components/app_colors.dart';
import '../../components/app_text_styles.dart';
import '../../components/list_item.dart';
import '../../constant.dart';
import '../../generated/assets.dart';
import '../customer/widgets/customer_deals_item.dart';
import '../customer/widgets/data_from_item_details_view.dart';
import '../customer/widgets/deal_details_dialog.dart';
import '../customer/widgets/features_from_item_details_view.dart';

class SeriousPurchaseRequestsDetailsView extends StatelessWidget {
  SeriousPurchaseRequestsDetailsView({super.key});

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
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.only(top: 16, right: 16, left: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                border: Border.all(width: 1, color: AppColors.border),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "بيانات العقار :",
                      style: AppTextStyles.style24W700(context),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      height: 170,
                      child: Row(
                        children: [
                          Expanded(child: buildMiniImage()),
                          const SizedBox(width: 8),
                          Expanded(child: buildMiniImage()),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Stack(
                              children: [
                                buildMiniImage(),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  child: Center(
                                    child: Text(
                                      " 3 +",
                                      style: AppTextStyles.style40W700(
                                        context,
                                      ).copyWith(color: AppColors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "فيلا للبيع",
                          style: AppTextStyles.style20W400(context),
                        ),
                        Row(
                          children: [
                            Text(
                              "السعر : ",
                              style: AppTextStyles.style16W400(context),
                            ),
                            Text(
                              " 243 ألف ريال",
                              style: AppTextStyles.style16W400(
                                context,
                              ).copyWith(color: AppColors.greenDark),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "مدينة الرياض - منطقة الزهور",
                          style: AppTextStyles.style20W400(
                            context,
                          ).copyWith(color: AppColors.greenDark),
                        ),
                        Row(
                          children: [
                            Text(
                              "العمولة : ",
                              style: AppTextStyles.style16W400(context),
                            ),
                            Text(
                              " 10 ألف ريال",
                              style: AppTextStyles.style16W400(
                                context,
                              ).copyWith(color: AppColors.greenDark),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    Text(
                      " البائع : مالك عقارات",
                      //دي  بتتغير علي حسب اللي راجه من الباك المالك ولا المكتب ولا الشركه
                      style: AppTextStyles.style20W400(context),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "محمد علي عبد القادر ( 0109272652423 )",
                      style: AppTextStyles.style20W400(context),
                    ),

                    const SizedBox(height: 32),
                    Text(
                      "تفاصيل العقار:",
                      style: AppTextStyles.style24W400(context),
                    ),
                    const SizedBox(height: 8),
                    DataFromItemDetailsView(
                      title: "قسم العقار :",
                      image: Assets.imagesDoorOpen,
                      value: "للبيع",
                      isGreen: true,
                    ),
                    DataFromItemDetailsView(
                      title: "نوع العقار :",
                      image: Assets.imagesHouse,
                      value: "فيلا",
                    ),
                    DataFromItemDetailsView(
                      title: "مساحة العقار :",
                      image: Assets.imagesVectorTwo,
                      value: "312 متر مربع",
                      isGreen: true,
                    ),
                    DataFromItemDetailsView(
                      title: "السعر :",
                      image: Assets.imagesVectorTwo,
                      value: "890 ألف ريال / غير قابل للتفاوض",
                    ),
                    DataFromItemDetailsView(
                      title: "ال  id للعقار :",
                      image: Assets.imagesChartPie,
                      value: "873562143",
                      isGreen: true,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      "مميزات العقار:",
                      style: AppTextStyles.style24W400(context),
                    ),
                    const SizedBox(height: 8),
                    FeaturesFromItemDetailsView(
                      value1: "دوبلكس",
                      isGreen: true,
                    ),
                    FeaturesFromItemDetailsView(value1: "8 غرفة للدور"),
                    FeaturesFromItemDetailsView(value1: "قبو", isGreen: true),
                    FeaturesFromItemDetailsView(value1: "مسبح"),
                    FeaturesFromItemDetailsView(
                      value1: "مدخل سيارة",
                      isGreen: true,
                    ),
                    FeaturesFromItemDetailsView(value1: "حديقة خاصة"),
                    SizedBox(height: 32),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        "وصف العقار",
                        style: AppTextStyles.style24W400(context),
                      ),
                    ),
                    SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        "تشكل فيلاّ ديستي في تيوفولي بقصرها وحديقتها شهادة من الشهادات الأكثر بروزًا وكمالاً على ثقافة عصر النهضة الأوروبية بما فيها من عناصر نقية. وفيلاّ ديستي بتصميمها المبدِع والعبقرية في الأعمال الهندسية في حديقتها (بِرك، وأحوض، إلخ)، هي مثل لا مثيل له عن الحديقة الإيطالية في القرن السادس عشر. وشكلت فيلاّ ديستي، وهي إحدى حدائق الروائع الأولى، نموذجًا مبكرًا لتطور الحدائق في أوروبا.",
                        style: AppTextStyles.style16W400(
                          context,
                        ).copyWith(color: AppColors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.only(top: 16, right: 16, left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "طلبات الشراء :",
                    style: AppTextStyles.style24W700(context),
                  ),
                  const SizedBox(height: 24),
                  Expanded(
                    child: GridView.count(
                      padding: EdgeInsets.zero,
                      crossAxisCount: 3,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,

                      children: List.generate(users.length, (index) {
                        return InkWell(
                          borderRadius: BorderRadius.circular(32),
                          onTap: () {},
                          child: ListViewItem(users: users[index]),
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
    );
  }

  static Widget buildMiniImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(32),
      child: Image.asset(
        Assets.imagesTest, // Replace as needed
        fit: BoxFit.cover,
      ),
    );
  }
}
