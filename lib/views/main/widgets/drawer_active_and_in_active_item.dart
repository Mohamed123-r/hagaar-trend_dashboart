import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import '../../../components/app_text_styles.dart';
import '../../../constant.dart';
import 'drawer_item_model.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsetsDirectional.zero,
      leading: Padding(
        padding: EdgeInsets.only(
            right: direction == TextDirection.ltr ? 0 : 16,
            left: direction == TextDirection.rtl ? 0 : 16),
        child: SvgPicture.asset(
          drawerItemModel.image,
        ),
      ),
      title: Text(drawerItemModel.title,
          style: AppTextStyles.style18W400(context)),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffEDFBED),
      child: ListTile(
        contentPadding: EdgeInsetsDirectional.zero,
        minLeadingWidth: 30,
        leading: Padding(
          padding: EdgeInsets.only(
              right: direction == TextDirection.ltr ? 0 : 16,
              left: direction == TextDirection.rtl ? 0 : 16),
          child: SvgPicture.asset(
            drawerItemModel.image,
            width: 25,
            height: 25,
          ),
        ),
        title: Text(
          drawerItemModel.title,
          style: AppTextStyles.style20W400(context).copyWith(),
        ),
      ),
    );
  }
}
