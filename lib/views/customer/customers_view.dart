import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hagaar_trend_dashboard/components/app_alert_dialog.dart';
import 'package:hagaar_trend_dashboard/components/app_button.dart';
import 'package:hagaar_trend_dashboard/components/app_colors.dart';
import 'package:hagaar_trend_dashboard/components/app_form_filed.dart';
import 'package:hagaar_trend_dashboard/generated/assets.dart';
import '../../components/app_text_styles.dart';
import '../../components/list_item.dart';
import '../../constant.dart';

class CustomersView extends StatefulWidget {
  CustomersView({super.key, required this.onTapItem});

  final Function() onTapItem;

  @override
  State<CustomersView> createState() => _CustomersViewState();
}

class _CustomersViewState extends State<CustomersView> {
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
  final List<Map<String, String>> office = [
    {
      "name": "مكتب عقارك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest2,
    },
    {
      "name": "مكتب عقارك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest2,
    },
    {
      "name": "مكتب عقارك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest2,
    },
    {
      "name": "مكتب عقارك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest2,
    },
    {
      "name": "مكتب عقارك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest2,
    },
    {
      "name": "مكتب عقارك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest2,
    },
    {
      "name": "مكتب عقارك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest2,
    },
    {
      "name": "مكتب عقارك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest2,
    },
    {
      "name": "مكتب عقارك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest2,
    },
    {
      "name": "مكتب عقارك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest2,
    },
    {
      "name": "مكتب عقارك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest2,
    },
    {
      "name": "مكتب عقارك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest2,
    },
    {
      "name": "مكتب عقارك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest2,
    },
    {
      "name": "مكتب عقارك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest2,
    },
    {
      "name": "مكتب عقارك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest2,
    },
    {
      "name": "مكتب عقارك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest2,
    },
    {
      "name": "مكتب عقارك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest2,
    },
    {
      "name": "مكتب عقارك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest2,
    },
    {
      "name": "مكتب عقارك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest2,
    },
    {
      "name": "مكتب عقارك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest2,
    },
    {
      "name": "مكتب عقارك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest2,
    },
    {
      "name": "مكتب عقارك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest2,
    },
    {
      "name": "مكتب عقارك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest2,
    },
    {
      "name": "مكتب عقارك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest2,
    },
  ];
  final List<Map<String, String>> company = [
    {
      "name": "شركة بيتك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest3,
    },
    {
      "name": "شركة بيتك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest3,
    },
    {
      "name": "شركة بيتك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest3,
    },
    {
      "name": "شركة بيتك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest3,
    },
    {
      "name": "شركة بيتك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest3,
    },
    {
      "name": "شركة بيتك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest3,
    },
    {
      "name": "شركة بيتك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest3,
    },
    {
      "name": "شركة بيتك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest3,
    },
    {
      "name": "شركة بيتك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest3,
    },
    {
      "name": "شركة بيتك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest3,
    },
    {
      "name": "شركة بيتك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest3,
    },
    {
      "name": "شركة بيتك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest3,
    },
    {
      "name": "شركة بيتك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest3,
    },
    {
      "name": "شركة بيتك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest3,
    },
    {
      "name": "شركة بيتك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest3,
    },
    {
      "name": "شركة بيتك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest3,
    },
    {
      "name": "شركة بيتك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest3,
    },
    {
      "name": "شركة بيتك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest3,
    },
    {
      "name": "شركة بيتك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest3,
    },
    {
      "name": "شركة بيتك الامن",
      "phone": "الرياض - م : الزهور",
      "image": Assets.imagesTest3,
    },
  ];
  final List<Map<String, String>> banker = [
    {
      "name": "بنك أبو ظبي الإسلامي",
      "phone": "الرياض",
      "image": Assets.imagesTest4,
    },
    {
      "name": "بنك أبو ظبي الإسلامي",
      "phone": "الرياض",
      "image": Assets.imagesTest4,
    },
    {
      "name": "بنك أبو ظبي الإسلامي",
      "phone": "الرياض",
      "image": Assets.imagesTest4,
    },
    {
      "name": "بنك أبو ظبي الإسلامي",
      "phone": "الرياض",
      "image": Assets.imagesTest4,
    },
    {
      "name": "بنك أبو ظبي الإسلامي",
      "phone": "الرياض",
      "image": Assets.imagesTest4,
    },
    {
      "name": "بنك أبو ظبي الإسلامي",
      "phone": "الرياض",
      "image": Assets.imagesTest4,
    },
    {
      "name": "بنك أبو ظبي الإسلامي",
      "phone": "الرياض",
      "image": Assets.imagesTest4,
    },
    {
      "name": "بنك أبو ظبي الإسلامي",
      "phone": "الرياض",
      "image": Assets.imagesTest4,
    },
  ];
  String type = 'customer';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 24,
          children: [
            TextButton(
              onPressed: () {
                userType = 'customer';
                type = 'customer';
                setState(() {});
              },
              child: Text(
                'العملاء',
                style: AppTextStyles.style18W400(
                  context,
                ).copyWith(color: AppColors.black),
              ),
            ),
            Container(width: 1, height: 20, color: AppColors.grey),
            TextButton(
              onPressed: () {
                userType = 'owner';
                type = 'owner';
                setState(() {});
              },
              child: Text(
                'مالك عقارات',
                style: AppTextStyles.style18W400(
                  context,
                ).copyWith(color: AppColors.black),
              ),
            ),
            Container(width: 1, height: 20, color: AppColors.grey),
            TextButton(
              onPressed: () {
                userType = 'office';
                type = 'office';
                setState(() {});
              },
              child: Text(
                'مكتب عقارات',
                style: AppTextStyles.style18W400(
                  context,
                ).copyWith(color: AppColors.black),
              ),
            ),
            Container(width: 1, height: 20, color: AppColors.grey),
            TextButton(
              onPressed: () {
                userType = 'company';
                type = 'company';
                setState(() {});
              },
              child: Text(
                'شركة عقارات',
                style: AppTextStyles.style18W400(
                  context,
                ).copyWith(color: AppColors.black),
              ),
            ),
            Container(width: 1, height: 20, color: AppColors.grey),
            TextButton(
              onPressed: () {
                userType = 'agent';
                type = 'agent';
                setState(() {});
              },
              child: Text(
                'مسوق عقاري',
                style: AppTextStyles.style18W400(
                  context,
                ).copyWith(color: AppColors.black),
              ),
            ),
            Container(width: 1, height: 20, color: AppColors.grey),
            TextButton(
              onPressed: () {
                userType = 'bank';
                type = 'bank';
                setState(() {});
              },
              child: Text(
                'موظف بنكي',
                style: AppTextStyles.style18W400(
                  context,
                ).copyWith(color: AppColors.black),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            right:
                type == 'owner'
                    ? 145.0
                    : type == 'office'
                    ? 310.0
                    : type == 'company'
                    ? 470.0
                    : type == 'agent'
                    ? 635.0
                    : type == 'bank'
                    ? 790.0
                    : 15,
          ),
          child: Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Color(0xff00BD06),
            ),
          ),
        ),
        Divider(height: 0),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 16, right: 16, left: 16),
            child: Stack(
              children: [
                GridView.count(
                  padding: EdgeInsets.zero,
                  crossAxisCount: 7,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,

                  children: List.generate(
                    userType == "bank"
                        ? banker.length
                        : userType == "owner"
                        ? users.length
                        : userType == "office"
                        ? office.length
                        : userType == "company"
                        ? company.length
                        : users.length,
                    (index) {
                      return InkWell(
                        borderRadius: BorderRadius.circular(32),
                        onTap: widget.onTapItem,
                        child: ListViewItem(
                          users:
                              userType == "bank"
                                  ? banker[index]
                                  : userType == "owner"
                                  ? users[index]
                                  : userType == "office"
                                  ? office[index]
                                  : userType == "company"
                                  ? company[index]
                                  : users[index],
                        ),
                      );
                    },
                  ),
                ),
                if (userType == "bank")
                  Positioned(
                    bottom: 16,
                    right: 0,
                    child: AppButton2(
                      text: "إضافة بنك للنظام",
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AppAlertDialog(
                              title: "إضافة بنك",
                              body: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 24,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(height: 16),
                                    Stack(
                                      children: [
                                        Container(
                                          width: 164,
                                          height: 164,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: AppColors.border,
                                          ),
                                          child: Center(
                                            child: SvgPicture.asset(
                                              Assets.imagesBuildings,
                                              fit: BoxFit.scaleDown,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 8,
                                          right: 8,
                                          child: Container(
                                            width: 32,
                                            height: 32,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: AppColors.white,
                                              border: Border.all(
                                                width: 1,
                                                color: AppColors.border,
                                              ),
                                            ),
                                            child: Center(
                                              child: SvgPicture.asset(
                                                Assets.imagesCamera,
                                                fit: BoxFit.scaleDown,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 16),
                                    AppInputTextFormField(
                                      labelText: "إسم البنك",
                                    ),
                                    SizedBox(height: 16),
                                    AppInputTextFormField(
                                      labelText: "المدينة التابع لها",
                                      keyboardType: TextInputType.phone,
                                    ),
                                    SizedBox(height: 32),
                                    AppButton2(
                                      text: "إضافة البنك",
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder:
                                              (context) => AppAlertDialog2(
                                                title: "تم إضافة البنك للنظام",
                                                onPressedOk: () {
                                                  Navigator.pop(context);
                                                  Navigator.pop(context);
                                                },
                                              ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
