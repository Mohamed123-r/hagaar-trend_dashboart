import 'package:flutter/material.dart';
import 'package:hagaar_trend_dashboard/components/app_colors.dart';
import 'package:hagaar_trend_dashboard/components/app_form_filed.dart';
import '../../components/app_alert_dialog.dart';
import '../../components/app_button.dart';
import '../../components/app_text_styles.dart';
import '../../components/list_item.dart';
import '../../components/show_data_widget.dart';
import '../../constant.dart';
import '../../generated/assets.dart';

class CustomerServiceView extends StatefulWidget {
  CustomerServiceView({super.key});

  @override
  State<CustomerServiceView> createState() => _CustomerServiceViewState();
}

class _CustomerServiceViewState extends State<CustomerServiceView> {
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
  String type = 'all';

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
                customerType = 'all';
                type = 'all';
                setState(() {});
              },
              child: Text(
                'جميع الشكاوي',
                style: AppTextStyles.style18W400(
                  context,
                ).copyWith(color: AppColors.black),
              ),
            ),
            Container(width: 1, height: 20, color: AppColors.grey),
            TextButton(
              onPressed: () {
                customerType = 'owner';
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
                customerType = 'office';
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
                customerType = 'company';
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
                customerType = 'agent';
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
                customerType = 'bank';
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
            Container(width: 1, height: 20, color: AppColors.grey),
            TextButton(
              onPressed: () {
                customerType = 'customer';
                userType = 'customer';
                type = 'customer';
                setState(() {});
              },
              child: Text(
                'مستخدم التطبيق',
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
                    ? 190.0
                    : type == 'office'
                    ? 345.0
                    : type == 'company'
                    ? 503.0
                    : type == 'agent'
                    ? 660.0
                    : type == 'bank'
                    ? 815.0
                    : type == 'customer'
                    ? 980.0
                    : 30,
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
            child: GridView.count(
              padding: EdgeInsets.zero,
              crossAxisCount: 7,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,

              children: List.generate(userType == "office"
    ? office.length
        : userType == "company"
    ? company.length
        : users.length, (index) {
                return InkWell(
                  borderRadius: BorderRadius.circular(32),
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
                                      spacing: 8,
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
                                            borderRadius: BorderRadius.circular(
                                              200,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          users[index]["name"].toString(),
                                          style: AppTextStyles.style24W400(
                                            context,
                                          ),
                                        ),
                                        Text(
                                          "+20 0108765434567",
                                          style: AppTextStyles.style20W400(
                                            context,
                                          ).copyWith(color: AppColors.grey),
                                        ),
                                        Text(
                                          customerType == 'owner'
                                              ? "مالك عقارات"
                                              : customerType == 'office'
                                              ? "مكتب عقارات"
                                              : customerType == 'company'
                                              ? "شركة عقارات"
                                              : customerType == 'agent'
                                              ? "مسوق عقاري"
                                              : customerType == 'bank'
                                              ? "موظف بنكي"
                                              : customerType == 'customer' ? "مستخدم للتطبيق":   "مستخدم للتطبيق",
                                          //ال case هنا بتتغير بناء علي مين اللي طلب هنا من العضويات
                                          style: AppTextStyles.style20W400(
                                            context,
                                          ).copyWith(color: AppColors.grey),
                                        ),

                                        ShowData2(
                                          title: "الشكوي :",
                                          value:
                                              "أواجه مشكلة في إضافة العقار نظرا لعدم حصولي علي رخصة نفاذ",
                                        ),
                                        AppInputTextFormField(
                                          maxLines: 5,
                                          labelText: "أرسل ردا :",
                                        ),
                                        SizedBox(),
                                        AppButton2(
                                          text: "إرسال الرد",
                                          onPressed: () {},
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                    );
                  },
                  child: ListViewItem(users:     userType == "office"
                      ? office[index]
                      : userType == "company"
                      ? company[index]
                      : users[index],),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
