import 'package:flutter/material.dart';
import 'package:hagaar_trend_dashboard/views/home/view/widgets/marketers_section.dart';
import 'package:hagaar_trend_dashboard/views/home/view/widgets/show_data_of_land_purchase_requests.dart';
import 'package:hagaar_trend_dashboard/views/home/view/widgets/show_data_of_serious_purchase_requests.dart';
import '../../../components/app_colors.dart';
import 'widgets/customer_section.dart';
import 'widgets/customer_service_section.dart';
import 'widgets/owner_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      color: AppColors.white,
      child: Column(
        spacing: 16,
        children: [
          Expanded(
            flex: 2,
            child: Row(
              spacing: 16,
              children: [
                Expanded(flex: 2, child: CustomerSection()),
                Expanded(flex: 2, child: MarketersSection()),
                Expanded(flex: 2, child: OwnerSection()),
                Expanded(flex: 2, child: CustomerServiceSection()),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Row(
              spacing: 16,
              children: [
                Expanded(flex: 5, child: ShowDataOfSeriousPurchaseRequests()),
                Expanded(flex: 3, child: ShowDataOfLandPurchaseRequests()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
