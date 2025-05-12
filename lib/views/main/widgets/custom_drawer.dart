import 'package:flutter/material.dart';

import '../../../components/app_alert_dialog.dart';
import '../../../components/app_colors.dart';
import '../../../constant.dart';
import '../../../generated/assets.dart';
import '../../../components/app_text_styles.dart';
import 'drawer_item_list_view.dart';
import 'drawer_item_model.dart';
import 'edit_profile.dart' show EditProfile;

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
    required this.drawerItems,
    required this.itemBuilder,
  });

  final NullableIndexedWidgetBuilder itemBuilder;

  final List<DrawerItemModel> drawerItems;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width * (300 / 1650);
    return Container(
      width: width,
      decoration: BoxDecoration(
        border: Border(
          right:
              direction == TextDirection.ltr
                  ? BorderSide(color: AppColors.border, width: 1)
                  : BorderSide(color: AppColors.white, width: 1),
          left:
              direction == TextDirection.rtl
                  ? BorderSide(color: AppColors.border, width: 1)
                  : BorderSide(color: AppColors.white, width: 1),
        ),
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                children: [
                  Image.asset(Assets.imagesLogo, height: 54, width: 64),
                  SizedBox(width: 24),
                  Text(
                    "ترند العقار",
                    style: AppTextStyles.style24W700(context),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 65),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "القائمة",
                    style: AppTextStyles.style20W700(context),
                  ),
                ),
              ],
            ),
          ),
          DrawerItemListView(
            drawerItems: drawerItems,
            itemBuilder: itemBuilder,
          ),

          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 1,
                    width: double.infinity,
                    color: AppColors.border,
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(32),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.logout_outlined),
                      SizedBox(width: 16),
                      Text(
                        "تسجيل الخروج",
                        style: AppTextStyles.style18W400(context),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
