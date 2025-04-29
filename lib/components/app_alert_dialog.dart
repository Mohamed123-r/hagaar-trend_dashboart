import 'package:flutter/material.dart';

import '../constant.dart';
import '../generated/assets.dart';
import 'app_button.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class AppAlertDialog extends StatelessWidget {
  const AppAlertDialog({
    super.key,
    required this.title,
    required this.body,
    this.isDelete,
  });

  final String title;

  final Widget body;
  final Widget? isDelete;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: AlertDialog(
        backgroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        title: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  Assets.imagesShapesDialog,
                  width: 200,
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.close,
                  ),
                ),
              ],
            ),
            isDelete ?? Container(),
            Padding(
              padding: const EdgeInsets.only(top: 42.0),
              child: Text(
                title,
                style: AppTextStyles.style24W400(context),
              ),
            ),
          ],
        ),
        titlePadding: EdgeInsets.zero,
        contentPadding: EdgeInsets.zero,
        content: body,
      ),
    );
  }
}

class AppAlertDialog2 extends StatelessWidget {
  const AppAlertDialog2({
    super.key,
    required this.title,
    required this.onPressedOk,
  });

  final String title;
  final Function() onPressedOk;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: AlertDialog(
        backgroundColor: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        titlePadding: EdgeInsets.zero,
        title: Align(
          alignment: Alignment.topLeft,
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.close,
            ),
          ),
        ),
        content: Padding(
          padding: const EdgeInsets.all(44.0),
          child: SizedBox(
            height: 120,
            width: 250,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.style20W400(context),
                ),
                // AppButton(
                //   body: Text(
                //     "موافق",
                //     style: AppTextStyles.style18W700(context)
                //         .copyWith(color: AppColors.white),
                //   ),
                //   onPressed: onPressedOk,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AdImagePicker extends StatefulWidget {
  final Function() onPressedOk;

  const AdImagePicker({super.key, required this.onPressedOk});

  @override
  State<AdImagePicker> createState() => _AdImagePickerState();
}

class _AdImagePickerState extends State<AdImagePicker> {
  File? _selectedImage;

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      titlePadding: EdgeInsets.zero,
      title: Align(
        alignment: Alignment.topLeft,
        child: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.close,
          ),
        ),
      ),
      content: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          height: 320,
          width: 350,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: _pickImage,
                child: Container(
                  width: double.infinity,
                  height: 240,
                  decoration: BoxDecoration(
                    color: Color(0xFFF9F6EE),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: _selectedImage == null
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.image,
                              size: 50,
                              color: AppColors.accent,
                            ),
                            const SizedBox(height: 40),
                            RichText(
                              text: TextSpan(
                                text: "قم بإضافة صورة ",
                                style:
                                    AppTextStyles.style20W400(context).copyWith(
                                  color: AppColors.black,
                                ),
                                children: [
                                  TextSpan(
                                    text: "إعلانك",
                                    style: AppTextStyles.style20W400(context)
                                        .copyWith(
                                            color: AppColors.accent,
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor: AppColors.accent),
                                  ),
                                  TextSpan(text: " هنا"),
                                ],
                              ),
                            ),
                          ],
                        )
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.file(
                            _selectedImage!,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 200,
                          ),
                        ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              // AppButton(
              //   text: Text(
              //     "موافق",
              //     style: AppTextStyles.style18W700(context)
              //         .copyWith(color: AppColors.white),
              //   ),
              //   onPressed: widget.onPressedOk,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
