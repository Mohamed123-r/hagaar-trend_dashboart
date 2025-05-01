import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart' show AppTextStyles;

class ListItemHor extends StatelessWidget {
  const ListItemHor({super.key, required this.users});

  final Map<String, String> users;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.transparent,
        backgroundImage:
        users['image'] != null
            ? NetworkImage(users['image']!)
            : AssetImage("assets/profile.jpg") as ImageProvider,
      ),
      title: Text(users['name']!, style: AppTextStyles.style16W400(context)),
      subtitle: Text(
        users['phone']!,
        style: AppTextStyles.style16W400(context),
      ),
      trailing: Text(
        users['type']!,
        style: AppTextStyles.style14W400(context).copyWith(
            color: AppColors.greenDark
        ),
      ),
    );
  }
}
