import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../components/app_alert_dialog.dart';
import '../../../components/app_button.dart';
import '../../../components/app_colors.dart';
import '../../../components/app_form_filed.dart';
import '../../../components/app_success_alert_dialog.dart';
import '../../../constant.dart';
import '../../../generated/assets.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final TextEditingController nameController = TextEditingController(
    text: "محمد علي",
  );
  final TextEditingController phoneController = TextEditingController(
    text: "+20 0108376546221",
  );

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    super.dispose(); // ✅
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        spacing: 16,
        children: [
          Stack(
            children: [
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://www.w3schools.com/w3images/avatar2.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(200),
                ),
              ),
              Positioned(
                bottom: 8,
                right: direction == TextDirection.rtl ? 12 : null,
                left: direction == TextDirection.ltr ? 12 : null,
                child: CircleAvatar(
                  backgroundColor: AppColors.white,
                  child: SvgPicture.asset(Assets.imagesCamera),
                ),
              ),
            ],
          ),
          AppInputTextFormField(
            labelText: "الاسم:",
            controller: nameController,
            keyboardType: TextInputType.name,
          ),
          AppInputTextFormField(
            labelText: "رقم الهاتف:",
            controller: phoneController,
            keyboardType: TextInputType.phone,
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppButton2(
                text: "تعديل كلمة المرور",
                onPressed: () {
                  showDialog(
                    context: context,
                    builder:
                        (context) => AppAlertDialog(
                          title: "تعديل كلمة المرور",
                          body: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 32,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              spacing: 24,
                              children: [
                                AppPassInputTextFormField(
                                  labelText: 'كلمة المرور القديمة',
                                  prefixIcon: Icon(Icons.lock_outline),
                                ),
                                AppPassInputTextFormField(
                                  labelText: ' كلمة المرور الجديدة',
                                  prefixIcon: Icon(Icons.lock_outline),
                                ),
                                AppPassInputTextFormField(
                                  labelText: 'تاكيد كلمة المرور ',
                                  prefixIcon: Icon(Icons.lock_outline),
                                ),
                                SizedBox(height: 24),
                                AppButton2(
                                  text: "حفظ التعديل",
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder:
                                          (context) => AppSuccessAlertDialog(
                                            title: "تم تغير كلمة المرور",
                                          ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                  );
                },
              ),
              SizedBox(width: 64),
              AppButton2(text: "حفظ تعديلات الحساب", onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
