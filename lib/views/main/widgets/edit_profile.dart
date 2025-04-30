import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../components/app_alert_dialog.dart';
import '../../../components/app_colors.dart';
import '../../../components/app_form_filed.dart';
import '../../../constant.dart';
import '../../../generated/assets.dart';


class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final TextEditingController nameController =
  TextEditingController(text: "محمد علي");
  final TextEditingController phoneController =
  TextEditingController(text: "+20 0108376546221");
  final TextEditingController passWordController =
  TextEditingController(text: "**********");
  final TextEditingController countryController =
  TextEditingController(text: "المملكة العربية السعودية");
  final TextEditingController cityController =
  TextEditingController(text: "الرياض");

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    countryController.dispose();
    cityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    width: 360,
                    height: 400,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://www.w3schools.com/w3images/avatar2.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    right: direction == TextDirection.rtl ? 12 : null,
                    left: direction == TextDirection.ltr ? 12 : null,
                    child: CircleAvatar(
                      backgroundColor: AppColors.white,
                      child: SvgPicture.asset(
                        Assets.imagesCamera,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 24,
              ),
              Column(
                spacing: 16,
                mainAxisSize: MainAxisSize.min,
                children: [
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
                  InkWell(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        18,
                      ),
                    ),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AppAlertDialog(
                          title: "أدخل كلمة المرور الجديدة",
                          body: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 32),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              spacing: 24,
                              children: [
                                AppPassInputTextFormField(
                                  labelText: 'كلمة المرور القديمة',
                                  prefixIcon: Icon(
                                    Icons.lock_outline,
                                  ),
                                ),
                                AppPassInputTextFormField(
                                  labelText: ' كلمة المرور الجديدة',
                                  prefixIcon: Icon(
                                    Icons.lock_outline,
                                  ),
                                ),
                                AppPassInputTextFormField(
                                  labelText: 'تاكيد كلمة المرور ',
                                  prefixIcon: Icon(
                                    Icons.lock_outline,
                                  ),
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                // AppButton2(
                                //   body: Text(
                                //     "كلمة المرور القديمة",
                                //     style: AppTextStyles.style18W700(context)
                                //         .copyWith(color: AppColors.white),
                                //   ),
                                //   onPressed: () {
                                //     showDialog(
                                //       context: context,
                                //       builder: (context) =>
                                //           AppSuccessAlertDialog(
                                //             title: "تم تغير كلمة المرور",
                                //           ),
                                //     );
                                //   },
                                // ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    child: IgnorePointer(
                      ignoring: true,
                      child: AppInputTextFormField(
                        labelText: "كلمة المرور:",
                        controller: passWordController,
                        keyboardType: TextInputType.phone,
                      ),
                    ),
                  ),
                  AppInputTextFormField(
                    labelText: "الدولة:",
                    controller: countryController,
                    keyboardType: TextInputType.name,
                  ),
                  AppInputTextFormField(
                    labelText: "المدينة:",
                    controller: cityController,
                    keyboardType: TextInputType.name,
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // AppButton2(
              //   body: Text(
              //     "حفظ التغيرات",
              //     style: AppTextStyles.style18W400(context).copyWith(
              //       color: AppColors.white,
              //     ),
              //   ),
              //   onPressed: () {},
              // ),
              // AppButton2(
              //   body: Text(
              //     "تسجيل الخروج",
              //     style: AppTextStyles.style18W400(context).copyWith(
              //       color: AppColors.white,
              //     ),
              //   ),
              //   onPressed: () {},
              // )
            ],
          )
        ],
      ),
    );
  }
}
