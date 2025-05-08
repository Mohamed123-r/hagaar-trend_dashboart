import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hagaar_trend_dashboard/components/app_alert_dialog.dart';
import 'package:hagaar_trend_dashboard/components/app_colors.dart';
import 'package:hagaar_trend_dashboard/components/app_form_filed.dart';
import '../../components/app_text_styles.dart';
import '../../components/list_item.dart';
import '../../constant.dart';
import '../../generated/assets.dart';

class SystemAdministrationView extends StatefulWidget {
  SystemAdministrationView({super.key, required this.onTapItem});

  final Function() onTapItem;

  @override
  State<SystemAdministrationView> createState() =>
      _SystemAdministrationViewState();
}

class _SystemAdministrationViewState extends State<SystemAdministrationView> {
  String? selectedValue;

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
  final List<Map<String, String>> items = [
    {'name': 'أرض', 'amount': 'أربال 3000'},
    {'name': 'محمد سكلي', 'amount': 'أربال 3000'},
    {'name': 'شهة', 'amount': 'أربال 3000'},
    {'name': 'دور سكلي', 'amount': 'أربال 3000'},
    {'name': 'طار بغصور', 'amount': 'أربال 3000'},
    {'name': 'صلات', 'amount': 'أربال 3000'},
    {'name': 'صلات عرض', 'amount': 'أربال 3000'},
    {'name': 'مكاتب', 'amount': 'أربال 3000'},
    {'name': 'سكن عمال', 'amount': 'أربال 3000'},
    {'name': 'عمار', 'amount': 'أربال 3000'},
    {'name': 'وزاع', 'amount': 'أربال 3000'},
    {'name': 'شابهات', 'amount': 'أربال 3000'},
    {'name': 'استرادات', 'amount': 'أربال 3000'},
    {'name': 'مستودعات', 'amount': 'أربال 3000'},
    {'name': 'معارض', 'amount': 'أربال 3000'},
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
          ],
        ),
        Padding(
          padding: EdgeInsets.only(right: type == 'subscriptions' ? 150.0 : 18),
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
        SizedBox(height: 16),
        Row(
          spacing: 20,
          children: [
            MaterialButton(
              minWidth: 200,
              height: 56,
              color:
                  subType == 'owners' ? AppColors.greenDark : AppColors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1600),
                side: BorderSide(
                  color:
                      subType == 'owners'
                          ? AppColors.greenDark
                          : AppColors.border,
                ),
              ),
              onPressed: () {
                subType = 'owners';
                userType = 'owner';
                setState(() {});
              },
              child: Text(
                'إتفاقات ملاك العقارات',
                style: AppTextStyles.style16W400(context).copyWith(
                  color:
                      subType == 'owners' ? AppColors.white : AppColors.black,
                ),
              ),
            ),
            MaterialButton(
              minWidth: 200,
              height: 56,
              color:
                  subType == 'companies'
                      ? AppColors.greenDark
                      : AppColors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1600),
                side: BorderSide(
                  color:
                      subType == 'companies'
                          ? AppColors.greenDark
                          : AppColors.border,
                ),
              ),
              onPressed: () {
                subType = 'companies';
                userType = 'company';
                setState(() {});
              },
              child: Text(
                'إتفاقات الشركات العقارية',
                style: AppTextStyles.style16W400(context).copyWith(
                  color:
                      subType == 'companies'
                          ? AppColors.white
                          : AppColors.black,
                ),
              ),
            ),
            MaterialButton(
              minWidth: 200,
              height: 56,
              color:
                  subType == 'catagories'
                      ? AppColors.greenDark
                      : AppColors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1600),
                side: BorderSide(
                  color:
                      subType == 'catagories'
                          ? AppColors.greenDark
                          : AppColors.border,
                ),
              ),
              onPressed: () {
                subType = 'catagories';
                setState(() {});
              },
              child: Text(
                'أقسام الإتفاقات',
                style: AppTextStyles.style16W400(context).copyWith(
                  color:
                      subType == 'catagories'
                          ? AppColors.white
                          : AppColors.black,
                ),
              ),
            ),
          ],
        ),
        if (subType == 'catagories')
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  GridView.builder(
                    padding: EdgeInsets.zero,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 8,
                          childAspectRatio: 4 / 5,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                        ),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: AppColors.border),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder:
                                            (context) => AppAlertDialog(
                                              title: "إضافة صلاحية الإتفاق",
                                              body: SizedBox(
                                                height: 300,
                                                width: 600,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                    16.0,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      SizedBox(height: 20),
                                                      Directionality(
                                                        textDirection:
                                                            TextDirection.rtl,
                                                        child: DropdownButtonFormField<
                                                          String
                                                        >(
                                                          decoration: InputDecoration(
                                                            disabledBorder: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                    16,
                                                                  ),
                                                              borderSide: BorderSide(
                                                                width: 1,
                                                                color:
                                                                    AppColors
                                                                        .border,
                                                              ),
                                                            ),
                                                            enabledBorder: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                    16,
                                                                  ),
                                                              borderSide: BorderSide(
                                                                width: 1,
                                                                color:
                                                                    AppColors
                                                                        .border,
                                                              ),
                                                            ),
                                                            border: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                    16,
                                                                  ),
                                                              borderSide: BorderSide(
                                                                width: 1,
                                                                color:
                                                                    AppColors
                                                                        .border,
                                                              ),
                                                            ),
                                                            contentPadding:
                                                                EdgeInsets.symmetric(
                                                                  horizontal:
                                                                      16,
                                                                  vertical: 18,
                                                                ),
                                                            label: Text(
                                                              "نوع القسم :",
                                                              textAlign:
                                                                  TextAlign
                                                                      .right,
                                                              style: AppTextStyles.style16W400(
                                                                context,
                                                              ).copyWith(
                                                                color:
                                                                    AppColors
                                                                        .grey,
                                                              ),
                                                            ),
                                                            alignLabelWithHint:
                                                                true,
                                                          ),
                                                          value:
                                                              items[index]['name']!,
                                                          items:
                                                              items
                                                                  .map(
                                                                    (
                                                                      e,
                                                                    ) => DropdownMenuItem<
                                                                      String
                                                                    >(
                                                                      value:
                                                                          e['name'],
                                                                      child: Align(
                                                                        alignment:
                                                                            Alignment.centerRight,
                                                                        child: Text(
                                                                          e['name']!,
                                                                          textAlign:
                                                                              TextAlign.right,
                                                                          style: TextStyle(
                                                                            fontSize:
                                                                                14,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  )
                                                                  .toList(),
                                                          onChanged: (
                                                            String? newValue,
                                                          ) {
                                                            setState(() {
                                                              selectedValue =
                                                                  newValue;
                                                            });
                                                          },
                                                          hint: Align(
                                                            alignment:
                                                                Alignment
                                                                    .centerRight,
                                                            child: Text(
                                                              "نوع القسم :",
                                                              textAlign:
                                                                  TextAlign
                                                                      .right,
                                                              style: AppTextStyles.style16W400(
                                                                context,
                                                              ).copyWith(
                                                                color:
                                                                    AppColors
                                                                        .grey,
                                                              ),
                                                            ),
                                                          ),
                                                          isExpanded: true,
                                                          dropdownColor:
                                                              Colors.white,
                                                          icon: Icon(
                                                            Icons
                                                                .arrow_drop_down,
                                                            size: 24,
                                                          ),
                                                          iconEnabledColor:
                                                              AppColors.border,
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            color: Colors.black,
                                                          ),
                                                          alignment:
                                                              Alignment
                                                                  .centerRight,
                                                        ),
                                                      ),
                                                      SizedBox(height: 20),
                                                      AppInputTextFormField(
                                                        labelText:
                                                            'قيمة العمولة :',
                                                        initialValue:
                                                            items[index]['amount']!,
                                                      ),
                                                      SizedBox(height: 20),
                                                      MaterialButton(
                                                        minWidth: 160,
                                                        height: 56,
                                                        color: AppColors.black,
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                1600,
                                                              ),
                                                        ),
                                                        onPressed: () {},
                                                        child: Text(
                                                          'موافق',
                                                          style:
                                                              AppTextStyles.style16W400(
                                                                context,
                                                              ).copyWith(
                                                                color:
                                                                    AppColors
                                                                        .white,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                      );
                                    },
                                    child: SvgPicture.asset(
                                      Assets.imagesNotePencil,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            Text(
                              items[index]['name']!,
                              style: AppTextStyles.style16W400(context),
                            ),
                            SizedBox(height: 8),
                            Text(
                              items[index]['amount']!,
                              style: AppTextStyles.style16W400(
                                context,
                              ).copyWith(color: AppColors.greenDark),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  MaterialButton(
                    minWidth: 200,
                    height: 56,
                    color: AppColors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1600),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder:
                            (context) => AppAlertDialog(
                              title: "إضافة صلاحية الإتفاق",
                              body: SizedBox(
                                height: 300,
                                width: 600,
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 20),
                                      Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: DropdownButtonFormField<String>(
                                          decoration: InputDecoration(
                                            disabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              borderSide: BorderSide(
                                                width: 1,
                                                color: AppColors.border,
                                              ),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              borderSide: BorderSide(
                                                width: 1,
                                                color: AppColors.border,
                                              ),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              borderSide: BorderSide(
                                                width: 1,
                                                color: AppColors.border,
                                              ),
                                            ),
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                  horizontal: 16,
                                                  vertical: 18,
                                                ),
                                            alignLabelWithHint: true,
                                          ),
                                          value: selectedValue,
                                          items:
                                              items
                                                  .map(
                                                    (e) => DropdownMenuItem<
                                                      String
                                                    >(
                                                      value: e['name'],
                                                      child: Align(
                                                        alignment:
                                                            Alignment
                                                                .centerRight,
                                                        child: Text(
                                                          e['name']!,
                                                          textAlign:
                                                              TextAlign.right,
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                  .toList(),
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              selectedValue = newValue;
                                            });
                                          },
                                          hint: Align(
                                            alignment: Alignment.centerRight,
                                            child: Text(
                                              "نوع القسم :",
                                              textAlign: TextAlign.right,
                                              style: AppTextStyles.style16W400(
                                                context,
                                              ).copyWith(color: AppColors.grey),
                                            ),
                                          ),
                                          isExpanded: true,
                                          dropdownColor: Colors.white,
                                          icon: Icon(
                                            Icons.arrow_drop_down,
                                            size: 24,
                                          ),
                                          iconEnabledColor: AppColors.border,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                          alignment: Alignment.centerRight,
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      AppInputTextFormField(
                                        labelText: 'قيمة العمولة :',
                                      ),
                                      SizedBox(height: 20),
                                      MaterialButton(
                                        minWidth: 160,
                                        height: 56,
                                        color: AppColors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            1600,
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          'موافق',
                                          style: AppTextStyles.style16W400(
                                            context,
                                          ).copyWith(color: AppColors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                      );
                    },
                    child: Text(
                      'إضافة قسم جديد',
                      style: AppTextStyles.style16W400(
                        context,
                      ).copyWith(color: AppColors.white),
                    ),
                  ),
                ],
              ),
            ),
          )
        else
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
                    onTap: widget.onTapItem,
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
