import 'package:flutter/material.dart';
import '../../components/app_button.dart';
import '../../components/app_colors.dart';
import '../../constant.dart';
import '../../generated/assets.dart';
import 'widgets/sections_of_forget_password.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(32),
          ),
          child: Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 48,
                      height: 48,
                      margin: EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.border),
                      ),
                      child: Center(
                        child: Icon(Icons.arrow_back_ios_new, size: 16),
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Image.asset(
                      width: MediaQuery.of(context).size.width / 15.5,
                      Assets.imagesLogo,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2.5,
                    width: MediaQuery.of(context).size.width,
                    child:
                        count == 1
                            ? EnterPhoneSection()
                            : count == 2
                            ? EnterCodeSection()
                            : EnterNewPassWordSection(),
                  ),
                  SizedBox(height: 58),
                  AppButton(
                    text: 'موافق',
                    onPressed: () {
                      count++;
                      setState(() {});
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
