import 'package:flutter/material.dart';

import '../../../components/app_button.dart';
import '../../../components/app_colors.dart';
import '../../../components/app_form_filed.dart';
import '../../../components/app_text_styles.dart';
import '../../../generated/assets.dart';
import '../../main/main_view.dart';
import '../forget_password_view.dart';

class SectionInputInLogin extends StatelessWidget {
  const SectionInputInLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        margin: EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("تسجيل الدخول", style: AppTextStyles.style32W700(context)),
                SizedBox(height: 60, width: double.infinity),
                AppInputTextFormField(
                  labelText: 'رقم الهاتف',
                  prefixIcon: Icon(Icons.phone_outlined),
                  keyboardType: TextInputType.phone,
                  onChanged: (value) {},
                ),
                SizedBox(height: 16),
                AppPassInputTextFormField(
                  labelText: "كلمة المرور",
                  prefixIcon: Icon(Icons.lock_outline),
                ),
                SizedBox(height: 32),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgetPasswordView(),
                      ),
                    );
                  },
                  child: Text(
                    "هل نسيت كلمة المرور ؟",
                    style: AppTextStyles.style16W700(context).copyWith(
                      color: AppColors.accent,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.accent,
                    ),
                  ),
                ),
                SizedBox(height: 60),
                AppButton(
                  text: "تسجيل الدخول",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainView()),
                    );
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Image.asset(
                width: MediaQuery.of(context).size.width / 15.5,
                Assets.imagesLogo,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
