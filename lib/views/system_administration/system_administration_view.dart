import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hagaar_trend_dashboard/components/app_alert_dialog.dart';
import 'package:hagaar_trend_dashboard/components/app_colors.dart';
import 'package:hagaar_trend_dashboard/components/app_form_filed.dart';
import 'package:hagaar_trend_dashboard/components/app_success_alert_dialog.dart';
import '../../components/app_text_styles.dart';
import '../../components/list_item.dart';
import '../../components/show_data_widget.dart';
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
                subType = 'owners';
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
                subType = 'offices';
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
        systemType == 'subscriptions'
            ? Row(
              spacing: 20,
              children: [
                SizedBox(),
                MaterialButton(
                  minWidth: 200,
                  height: 56,
                  color:
                      subType == 'offices'
                          ? AppColors.greenDark
                          : AppColors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1600),
                    side: BorderSide(
                      color:
                          subType == 'offices'
                              ? AppColors.greenDark
                              : AppColors.border,
                    ),
                  ),
                  onPressed: () {
                    subType = 'offices';
                    userType = 'office';
                    setState(() {});
                  },
                  child: Text(
                    'إشتراكات المكاتب العقارية',
                    style: AppTextStyles.style16W400(context).copyWith(
                      color:
                          subType == 'offices'
                              ? AppColors.white
                              : AppColors.black,
                    ),
                  ),
                ),
                MaterialButton(
                  minWidth: 200,
                  height: 56,
                  color:
                      subType == 'agents'
                          ? AppColors.greenDark
                          : AppColors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1600),
                    side: BorderSide(
                      color:
                          subType == 'agents'
                              ? AppColors.greenDark
                              : AppColors.border,
                    ),
                  ),
                  onPressed: () {
                    subType = 'agents';
                    userType = 'agent';
                    setState(() {});
                  },
                  child: Text(
                    'إشتراكات المسوقين العقاريين',
                    style: AppTextStyles.style16W400(context).copyWith(
                      color:
                          subType == 'agents'
                              ? AppColors.white
                              : AppColors.black,
                    ),
                  ),
                ),
                MaterialButton(
                  minWidth: 200,
                  height: 56,
                  color:
                      subType == 'banks'
                          ? AppColors.greenDark
                          : AppColors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1600),
                    side: BorderSide(
                      color:
                          subType == 'banks'
                              ? AppColors.greenDark
                              : AppColors.border,
                    ),
                  ),
                  onPressed: () {
                    subType = 'banks';
                    userType = 'bank';
                    setState(() {});
                  },
                  child: Text(
                    'إشتراك موظفين البنوك',
                    style: AppTextStyles.style16W400(context).copyWith(
                      color:
                          subType == 'banks'
                              ? AppColors.white
                              : AppColors.black,
                    ),
                  ),
                ),

                MaterialButton(
                  minWidth: 200,
                  height: 56,
                  color:
                      subType == 'subscriptions'
                          ? AppColors.greenDark
                          : AppColors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1600),
                    side: BorderSide(
                      color:
                          subType == 'subscriptions'
                              ? AppColors.greenDark
                              : AppColors.border,
                    ),
                  ),
                  onPressed: () {
                    subType = 'subscriptions';
                    setState(() {});
                  },
                  child: Text(
                    'إشتراكات النظام',
                    style: AppTextStyles.style16W400(context).copyWith(
                      color:
                          subType == 'subscriptions'
                              ? AppColors.white
                              : AppColors.black,
                    ),
                  ),
                ),
              ],
            )
            : Row(
              spacing: 20,
              children: [
                SizedBox(),
                MaterialButton(
                  minWidth: 200,
                  height: 56,
                  color:
                      subType == 'owners'
                          ? AppColors.greenDark
                          : AppColors.white,
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
                          subType == 'owners'
                              ? AppColors.white
                              : AppColors.black,
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
          subType == "subscriptions"
              ? Padding(
                padding: EdgeInsets.only(top: 16, right: 16, left: 16),
                child: Container(
                  width: 360,
                  height: 180,
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
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "الإشتراك الشهري :",
                            style: AppTextStyles.style16W400(context),
                          ),
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
                                            padding: const EdgeInsets.all(16.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                SizedBox(height: 60),

                                                AppInputTextFormField(
                                                  labelText: 'قيمة العمولة :',
                                                  initialValue: "2300 ريال",
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
                                                              AppColors.white,
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
                              child: SvgPicture.asset(Assets.imagesNotePencil),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),

                      Text(
                        "2300 ريال",
                        style: AppTextStyles.style16W400(
                          context,
                        ).copyWith(color: AppColors.greenDark),
                      ),
                    ],
                  ),
                ),
              )
              : Expanded(
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
                        onTap:
                            systemType == 'subscriptions'
                                ? () {
                                  showDialog(
                                    context: context,
                                    builder:
                                        (context) => AppAlertDialog(
                                          title: "",
                                          body:
                                              subType == 'offices'
                                                  ? SingleChildScrollView(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                            16.0,
                                                          ),
                                                      child: Column(
                                                        spacing: 12,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: 230,
                                                            height: 230,
                                                            decoration: BoxDecoration(
                                                              shape:
                                                                  BoxShape
                                                                      .circle,
                                                              color:
                                                                  Colors.white,
                                                              border: Border.all(
                                                                width: 1,
                                                                color:
                                                                    AppColors
                                                                        .border,
                                                              ),
                                                            ),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                    320,
                                                                  ),
                                                              child: Image.network(
                                                                width: 230,
                                                                height: 230,
                                                                fit:
                                                                    BoxFit
                                                                        .cover,
                                                                "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(),
                                                          Text(
                                                            userType ==
                                                                    "company"
                                                                ? "شركة : الريال للعقارات"
                                                                : "مكتب : عقارك الامن",
                                                            style:
                                                                AppTextStyles.style24W400(
                                                                  context,
                                                                ),
                                                          ),
                                                          Text(
                                                            "الرياض - م: الزهور",
                                                            style:
                                                                AppTextStyles.style20W400(
                                                                  context,
                                                                ).copyWith(
                                                                  color:
                                                                      AppColors
                                                                          .grey,
                                                                ),
                                                          ),
                                                          const SizedBox(
                                                            height: 8,
                                                          ),
                                                          ShowData(
                                                            title:
                                                                "إسم مالك المكتب :",
                                                            value:
                                                                "محمد علي عبد القادر",
                                                          ),
                                                          ShowData(
                                                            title:
                                                                userType ==
                                                                        "company"
                                                                    ? "اسم الشركة :"
                                                                    : "إسم المكتب :",
                                                            value:
                                                                "عقارك الامن",
                                                          ),
                                                          ShowData(
                                                            title: "رقم الهاتف",
                                                            value:
                                                                "+20 010837654322",
                                                          ),
                                                          ShowData(
                                                            title:
                                                                "نوع العضوية",
                                                            value:
                                                                userType ==
                                                                        'company'
                                                                    ? "شركة عقارات"
                                                                    : userType ==
                                                                        'owner'
                                                                    ? "مكتب عقارات"
                                                                    : "",
                                                          ),
                                                          ShowData(
                                                            title: "المدينة",
                                                            value: "الرياض",
                                                          ),
                                                          ShowData(
                                                            title: "المنطقة",
                                                            value: "الرياض",
                                                          ),
                                                          ShowData(
                                                            title:
                                                                "1324567890-2",
                                                            value:
                                                                "رقم السجل التجاري :",
                                                          ),
                                                          ShowData(
                                                            title:
                                                                "1324567890-2",
                                                            value:
                                                                "رقم رخصة نفاذ :",
                                                          ),
                                                          ShowData(
                                                            title:
                                                                "1324567890-2",
                                                            value:
                                                                "رقم رخصة فال :",
                                                          ),
                                                          MaterialButton(
                                                            minWidth: 160,
                                                            height: 56,
                                                            color:
                                                                AppColors.black,
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                    16,
                                                                  ),
                                                            ),
                                                            onPressed: () {
                                                              showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (
                                                                      context,
                                                                    ) => AppSuccessAlertDialog(
                                                                      title:
                                                                          "تم دفع قيمة الإشتراك للنظام",
                                                                    ),
                                                              );
                                                            },
                                                            child: Text(
                                                              'تجديد الإشتراك',
                                                              style: AppTextStyles.style16W400(
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
                                                  )
                                                  : SingleChildScrollView(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                            16.0,
                                                          ),
                                                      child: Column(
                                                        spacing: 12,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: 230,
                                                            height: 230,
                                                            decoration: BoxDecoration(
                                                              shape:
                                                                  BoxShape
                                                                      .circle,
                                                              color:
                                                                  Colors.white,
                                                              border: Border.all(
                                                                width: 1,
                                                                color:
                                                                    AppColors
                                                                        .border,
                                                              ),
                                                            ),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                    320,
                                                                  ),
                                                              child: Image.network(
                                                                width: 230,
                                                                height: 230,
                                                                fit:
                                                                    BoxFit
                                                                        .cover,
                                                                "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(),
                                                          Text(
                                                            "Mohammed Hassan Ali",
                                                            style:
                                                                AppTextStyles.style24W400(
                                                                  context,
                                                                ),
                                                          ),
                                                          Text(
                                                            userType ==
                                                                    'customer'
                                                                ? "مستخدم للتطبيق"
                                                                : userType ==
                                                                    'owner'
                                                                ? "مالك عقارات"
                                                                : userType ==
                                                                    'agent'
                                                                ? "مسوق عقاري"
                                                                : "",
                                                            style:
                                                                AppTextStyles.style20W400(
                                                                  context,
                                                                ).copyWith(
                                                                  color:
                                                                      AppColors
                                                                          .grey,
                                                                ),
                                                          ),
                                                          const SizedBox(
                                                            height: 8,
                                                          ),
                                                          ShowData(
                                                            title: "رقم الهاتف",
                                                            value:
                                                                "+20 010837654322",
                                                          ),
                                                          ShowData(
                                                            title:
                                                                "نوع العضوية",
                                                            value:
                                                                userType ==
                                                                        'customer'
                                                                    ? "مستخدم للتطبيق"
                                                                    : userType ==
                                                                        'owner'
                                                                    ? "مالك عقارات"
                                                                    : userType ==
                                                                        'agent'
                                                                    ? "مسوق عقاري"
                                                                    : "",
                                                          ),
                                                          ShowData(
                                                            title: "المدينة",
                                                            value: "الرياض",
                                                          ),
                                                          ShowData(
                                                            title: "المنطقة",
                                                            value: "الرياض",
                                                          ),
                                                          MaterialButton(
                                                            minWidth: 160,
                                                            height: 56,
                                                            color:
                                                                AppColors.black,
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                    16,
                                                                  ),
                                                            ),
                                                            onPressed: () {
                                                              showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (
                                                                      context,
                                                                    ) => AppSuccessAlertDialog(
                                                                      title:
                                                                          "تم دفع قيمة الإشتراك للنظام",
                                                                    ),
                                                              );
                                                            },
                                                            child: Text(
                                                              'تجديد الإشتراك',
                                                              style: AppTextStyles.style16W400(
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
                                }
                                : widget.onTapItem,
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
