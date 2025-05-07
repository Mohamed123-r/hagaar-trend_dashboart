import 'package:flutter/material.dart';

import '../../../components/app_colors.dart';
import '../../../components/app_text_styles.dart';
import '../../../constant.dart';
import '../../../generated/assets.dart';
import 'data_from_item_details_view.dart';
import 'features_from_item_details_view.dart';

class DealDetailsDialog extends StatelessWidget {
  const DealDetailsDialog({super.key});

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
            Text("تفاصيل الصفقة:", style: AppTextStyles.style24W700(context)),
            Spacer(),
            IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.close),
            ),
          ],
        ),
        content: SizedBox(
          width: 800,
          height: 600,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 6,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "فيلا للبيع",
                            style: AppTextStyles.style20W400(context),
                          ),
                          Row(
                            children: [
                              Text(
                                "السعر : ",
                                style: AppTextStyles.style16W400(context),
                              ),
                              Text(
                                " 243 ألف ريال",
                                style: AppTextStyles.style16W400(
                                  context,
                                ).copyWith(color: AppColors.greenDark),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "مدينة الرياض - منطقة الزهور",
                            style: AppTextStyles.style20W400(
                              context,
                            ).copyWith(color: AppColors.greenDark),
                          ),
                          Row(
                            children: [
                              Text(
                                "العمولة : ",
                                style: AppTextStyles.style16W400(context),
                              ),
                              Text(
                                " 10 ألف ريال",
                                style: AppTextStyles.style16W400(
                                  context,
                                ).copyWith(color: AppColors.greenDark),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 32),
                      Text(
                        " البائع : مالك عقارات",//دي  بتتغير علي حسب اللي راجه من الباك المالك ولا المكتب ولا الشركه
                        style: AppTextStyles.style20W400(context),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "محمد علي عبد القادر ( 0109272652423 )",
                        style: AppTextStyles.style20W400(context),
                      ),

                      const SizedBox(height: 32),
                      Text(
                        "تفاصيل العقار:",
                        style: AppTextStyles.style24W400(context),
                      ),
                      const SizedBox(height: 8),
                      DataFromItemDetailsView(
                        title: "قسم العقار :",
                        image: Assets.imagesDoorOpen,
                        value: "للبيع",
                        isGreen: true,
                      ),
                      DataFromItemDetailsView(
                        title: "نوع العقار :",
                        image: Assets.imagesHouse,
                        value: "فيلا",
                      ),
                      DataFromItemDetailsView(
                        title: "مساحة العقار :",
                        image: Assets.imagesVectorTwo,
                        value: "312 متر مربع",
                        isGreen: true,
                      ),
                      DataFromItemDetailsView(
                        title: "السعر :",
                        image: Assets.imagesVectorTwo,
                        value: "890 ألف ريال / غير قابل للتفاوض",
                      ),
                      DataFromItemDetailsView(
                        title: "ال  id للعقار :",
                        image: Assets.imagesChartPie,
                        value: "873562143",
                        isGreen: true,
                      ),
                      const SizedBox(height: 24),
                      Text(
                        "مميزات العقار:",
                        style: AppTextStyles.style24W400(context),
                      ),
                      const SizedBox(height: 8),
                      FeaturesFromItemDetailsView(
                        value1: "دوبلكس",
                        isGreen: true,
                      ),
                      FeaturesFromItemDetailsView(value1: "8 غرفة للدور"),
                      FeaturesFromItemDetailsView(value1: "قبو", isGreen: true),
                      FeaturesFromItemDetailsView(value1: "مسبح"),
                      FeaturesFromItemDetailsView(
                        value1: "مدخل سيارة",
                        isGreen: true,
                      ),
                      FeaturesFromItemDetailsView(value1: "حديقة خاصة"),
                      SizedBox(height: 32),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Text(
                          "وصف العقار",
                          style: AppTextStyles.style24W400(context),
                        ),
                      ),
                      SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Text(
                          "تشكل فيلاّ ديستي في تيوفولي بقصرها وحديقتها شهادة من الشهادات الأكثر بروزًا وكمالاً على ثقافة عصر النهضة الأوروبية بما فيها من عناصر نقية. وفيلاّ ديستي بتصميمها المبدِع والعبقرية في الأعمال الهندسية في حديقتها (بِرك، وأحوض، إلخ)، هي مثل لا مثيل له عن الحديقة الإيطالية في القرن السادس عشر. وشكلت فيلاّ ديستي، وهي إحدى حدائق الروائع الأولى، نموذجًا مبكرًا لتطور الحدائق في أوروبا.",
                          style: AppTextStyles.style16W400(
                            context,
                          ).copyWith(color: AppColors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(width: 24),

              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(32),
                        child: Image.asset(
                          Assets.imagesTest,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(child: buildMiniImage()),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Stack(
                              children: [
                                Expanded(child: buildMiniImage()),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  child: Center(
                                    child: Text(
                                      " 3 +",
                                      style: AppTextStyles.style40W700(
                                        context,
                                      ).copyWith(color: AppColors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget buildMiniImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(32),
      child: Image.asset(
        Assets.imagesTest, // Replace as needed
        fit: BoxFit.cover,
      ),
    );
  }
}