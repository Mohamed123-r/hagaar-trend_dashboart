import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hagaar_trend_dashboard/components/show_data_widget.dart';
import 'package:hagaar_trend_dashboard/constant.dart';
import 'package:hagaar_trend_dashboard/views/customer/widgets/banker_data_section.dart';
import 'package:hagaar_trend_dashboard/views/customer/widgets/banker_deals_section.dart';
import 'package:hagaar_trend_dashboard/views/customer/widgets/customer_data_section.dart';
import 'package:hagaar_trend_dashboard/views/customer/widgets/customer_deals_item.dart';
import 'package:hagaar_trend_dashboard/views/customer/widgets/customer_deals_section.dart';
import 'package:hagaar_trend_dashboard/views/customer/widgets/office_data_section.dart';

import '../../components/app_colors.dart';
import '../../components/app_text_styles.dart';
import '../../components/list_item.dart';
import '../../generated/assets.dart';

class CustomerDetailsView extends StatelessWidget {
  CustomerDetailsView({super.key, required this.onTapItem});
  final Function() onTapItem;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child:
                  userType == "bank"
                      ? BankerDataSection()
                      : userType == "office" || userType == "company"
                      ? OfficeDataSection()
                      : CustomerDataSection(),
            ),
            // Left: Deals
            const SizedBox(width: 24),
            Expanded(flex: 2, child:
            userType == "bank"
                ? BankerDealsSection(onTapItem: onTapItem )
                :

            CustomerDealsSection()),

            // Right: Customer Info
          ],
        ),
      ),
    );
  }
}
