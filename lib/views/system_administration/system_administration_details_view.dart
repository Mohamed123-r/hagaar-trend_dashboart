import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hagaar_trend_dashboard/components/app_success_alert_dialog.dart';
import 'package:hagaar_trend_dashboard/components/show_data_widget.dart';
import 'package:hagaar_trend_dashboard/constant.dart';
import 'package:hagaar_trend_dashboard/views/customer/widgets/customer_data_section.dart';
import 'package:hagaar_trend_dashboard/views/customer/widgets/customer_deals_item.dart';
import 'package:hagaar_trend_dashboard/views/customer/widgets/customer_deals_section.dart';
import 'package:hagaar_trend_dashboard/views/customer/widgets/office_data_section.dart';
import 'package:hagaar_trend_dashboard/views/system_administration/widgets/powers_of_the_agreement_dialog.dart';

import '../../components/app_colors.dart';
import '../../components/app_text_styles.dart';
import '../../components/list_item.dart';
import '../../generated/assets.dart';
import '../customer/widgets/deal_details_dialog.dart';

class SystemAdministrationDetailsView extends StatefulWidget {
  SystemAdministrationDetailsView({super.key});

  @override
  State<SystemAdministrationDetailsView> createState() =>
      _SystemAdministrationDetailsViewState();
}

class _SystemAdministrationDetailsViewState
    extends State<SystemAdministrationDetailsView> {
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

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    type = 'agreements';
                    setState(() {});
                  },
                  child: Text(
                    'صلاحيات الإتفاقات',
                    style: AppTextStyles.style18W400(
                      context,
                    ).copyWith(color: AppColors.black),
                  ),
                ),
                Container(width: 1, height: 20, color: AppColors.grey),
                TextButton(
                  onPressed: () {
                    type = 'subscriptions';
                    setState(() {});
                  },
                  child: Text(
                    'عمليات الدفع',
                    style: AppTextStyles.style18W400(
                      context,
                    ).copyWith(color: AppColors.black),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                right: type == 'subscriptions' ? 175.0 : 44,
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
            SizedBox(height: 16),
            type == 'subscriptions'
                ? Expanded(
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      GridView.builder(
                        padding: EdgeInsets.zero,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 4 / 1.6,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12,
                            ),
                        itemCount: 40,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => DealDetailsDialog(),
                              );
                            },
                            borderRadius: BorderRadius.circular(32),
                            child: CustomerDealsItem(),
                          );
                        },
                      ),
                      MaterialButton(
                        minWidth: 200,
                        height: 56,
                        color: AppColors.greenDark,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1600),
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder:
                                (context) => AppSuccessAlertDialog(
                                  title: "تم دفع قيمة الإتفاق للنظام",
                                ),
                          );
                        },
                        child: Text(
                          'تحديث حالة الدفع للنظام',
                          style: AppTextStyles.style16W400(
                            context,
                          ).copyWith(color: AppColors.white),
                        ),
                      ),
                    ],
                  ),
                )
                : Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child:
                            userType == 'company'
                                ? OfficeDataSection()
                                : CustomerDataSection(),
                      ),
                      // Left: Deals
                      const SizedBox(width: 24),
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            border: Border.all(
                              width: 1,
                              color: AppColors.border,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "صلاحيات الإتفاق :",
                                style: AppTextStyles.style24W700(context),
                              ),
                              const SizedBox(height: 24),
                              Expanded(
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    GridView.builder(
                                      padding: EdgeInsets.zero,
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 5,
                                            childAspectRatio: 4 / 5,
                                            crossAxisSpacing: 12,
                                            mainAxisSpacing: 12,
                                          ),
                                      itemCount: items.length,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            border: Border.all(
                                              width: 1,
                                              color: AppColors.border,
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.withOpacity(
                                                  0.3,
                                                ),
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
                                                    padding:
                                                        const EdgeInsets.all(
                                                          8.0,
                                                        ),
                                                    child: SvgPicture.asset(
                                                      Assets.imagesTrash,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 16),
                                              Text(
                                                items[index]['name']!,
                                                style:
                                                    AppTextStyles.style16W400(
                                                      context,
                                                    ),
                                              ),
                                              SizedBox(height: 8),
                                              Text(
                                                items[index]['amount']!,
                                                style:
                                                    AppTextStyles.style16W400(
                                                      context,
                                                    ).copyWith(
                                                      color:
                                                          AppColors.greenDark,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                    MaterialButton(
                                      minWidth: 200,
                                      height: 56,
                                      color: AppColors.greenDark,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          1600,
                                        ),
                                      ),
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder:
                                              (context) =>
                                                  PowersOfTheAgreementDialog(),
                                        );
                                      },
                                      child: Text(
                                        'اضافة صلاحية',
                                        style: AppTextStyles.style16W400(
                                          context,
                                        ).copyWith(color: AppColors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Right: Customer Info
                    ],
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
