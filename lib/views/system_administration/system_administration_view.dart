import 'package:flutter/material.dart';
import 'package:hagaar_trend_dashboard/components/app_colors.dart';
import '../../components/app_text_styles.dart';
import '../../components/list_item.dart';
import '../../constant.dart';

class SystemAdministrationView extends StatefulWidget {
  SystemAdministrationView({super.key});

  @override
  State<SystemAdministrationView> createState() =>
      _SystemAdministrationViewState();
}

class _SystemAdministrationViewState extends State<SystemAdministrationView> {
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
  String type = 'agreements';
  String subType = 'owners';
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
                systemType = 'agreements';
                type = 'agreements';
                setState(() {});
              },
              child: Text(
                'الإتفاقات',
                style: AppTextStyles.style18W400(
                  context,
                ).copyWith(color: AppColors.black),
              ),
            ),
            Container(width: 1, height: 20, color: AppColors.grey),
            TextButton(
              onPressed: () {
                systemType = 'subscriptions';
                type = 'subscriptions';
                setState(() {});
              },
              child: Text(
                'الإشتراكات',
                style: AppTextStyles.style18W400(
                  context,
                ).copyWith(color: AppColors.black),
              ),
            ),
            Container(width: 1, height: 20, color: AppColors.grey),
            TextButton(
              onPressed: () {
                systemType = 'financial';
                type = 'financial';
                setState(() {});
              },
              child: Text(
                'المعاملات المالية',
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
                type == 'subscriptions'
                    ? 150.0
                    : type == 'financial'
                    ? 310.0
                    : 18,
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
        SizedBox(
          height: 16,
        ),
        Row(
          spacing: 20,
          children: [
            MaterialButton(
              minWidth: 200,
              height: 56,
              color:subType == 'owners' ? AppColors.greenDark : AppColors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1600),
                side:  BorderSide(color: subType == 'owners' ? AppColors.greenDark : AppColors.border),
              ),
              onPressed: () {
                subType = 'owners';
                setState(() {});
              },
              child: Text(
                'إتفاقات ملاك العقارات',
                style: AppTextStyles.style16W400(
                  context,
                ).copyWith(color:subType == 'owners' ? AppColors.white : AppColors.black),
              ),
            ),
            MaterialButton(
              minWidth: 200,
              height: 56,
              color: subType == 'companies' ? AppColors.greenDark : AppColors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1600),
                side:  BorderSide(color: subType == 'companies' ? AppColors.greenDark : AppColors.border),
              ),
              onPressed: () {
                subType = 'companies';
                setState(() {});
              },
              child: Text(
                'إتفاقات الشركات العقارية',
                style: AppTextStyles.style16W400(
                  context,
                ).copyWith(color: subType == 'companies' ? AppColors.white : AppColors.black),
              ),
            ),
            MaterialButton(
              minWidth: 200,
              height: 56,
              color: subType == 'catagories' ? AppColors.greenDark : AppColors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1600),
                side:  BorderSide(color:subType == 'catagories' ? AppColors.greenDark : AppColors.border),
              ),
              onPressed: () {
                subType = 'catagories';
                setState(() {});
              },
              child: Text(
                'أقسام الإتفاقات',
                style: AppTextStyles.style16W400(
                  context,
                ).copyWith(color: subType == 'catagories' ? AppColors.white : AppColors.black),
              ),
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 16, right: 16, left: 16),
            child: GridView.count(
              padding: EdgeInsets.zero,
              crossAxisCount: 7,
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
        ),
      ],
    );
  }
}
