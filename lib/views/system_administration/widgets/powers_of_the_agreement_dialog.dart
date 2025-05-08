import 'package:flutter/material.dart';

import '../../../components/app_colors.dart';
import '../../../components/app_success_alert_dialog.dart';
import '../../../components/app_text_styles.dart';
import '../../../constant.dart';

class PowersOfTheAgreementDialog extends StatelessWidget {
  PowersOfTheAgreementDialog({super.key});

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

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: AlertDialog(
        backgroundColor: AppColors.white,
        contentPadding: const EdgeInsets.only(bottom: 24, right: 24, left: 24),
        titlePadding: EdgeInsets.only(top: 12, right: 16, left: 16, bottom: 8),
        title: Row(
          children: [
            Text(
              "صلاحيات الإتفاق :",
              style: AppTextStyles.style24W700(context),
            ),
            Spacer(),
            IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.close),
            ),
          ],
        ),
        content: SizedBox(
          height: 800,
          width: 800,

          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                            Checkbox(value: false, onChanged: (value) {}),
                          ],
                        ),
                        SizedBox(height: 8),
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
                  borderRadius: BorderRadius.circular(16),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder:
                        (context) => AppSuccessAlertDialog(
                      title: "تم إضافة الصلاحيات بنجاح",
                    ),
                  );
                },
                child: Text(
                  'إضافة الصلاحيات',
                  style: AppTextStyles.style16W400(
                    context,
                  ).copyWith(color: AppColors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
