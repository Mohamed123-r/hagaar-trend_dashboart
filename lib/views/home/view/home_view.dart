import 'package:flutter/material.dart';
import 'package:hagaar_trend_dashboard/views/home/view/widgets/marketers_section.dart';
import 'package:hagaar_trend_dashboard/views/home/view/widgets/show_data_of_customers_section.dart';
import 'package:hagaar_trend_dashboard/views/home/view/widgets/show_data_of_orders_section.dart';

import '../../../components/app_colors.dart';
import 'widgets/customer_section.dart';
import 'widgets/customer_service_section.dart';
import 'widgets/owner_section.dart';
import 'widgets/show_data_of_delegates_section.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      color: AppColors.white,
      child: Row(
        spacing: 16,
        children: [
          Expanded(
            flex: 2,
            child: CustomerSection(),
          ),
          Expanded(
            flex: 2,
            child: MarketersSection(),
          ),
          Expanded(
            flex: 2,
            child: OwnerSection(),
          ),
          Expanded(
            flex: 2,
            child: CustomerServiceSection(),
          ),
          // Expanded(
          //   child: Column(
          //     spacing: 16,
          //     children: [
          //       Expanded(
          //         flex: 2,
          //         child: CustomerSection(),
          //       ),
          //
          //       Expanded(
          //         flex: 5,
          //         child: ShowDataOfDelegatesSection(),
          //       ),
          //     ],
          //   ),
          // ),
          // Expanded(
          //   child: Column(
          //     children: [
          //       Expanded(
          //         flex: 2,
          //         child: MarketersSection(),
          //       ),
          //       SizedBox(
          //         height: 16,
          //       ),
          //       Expanded(
          //         flex: 5,
          //         child: ShowDataOfCustomersSection(),
          //       ),
          //     ],
          //   ),
          // ),
          // Expanded(
          //   child: Column(
          //     children: [
          //       Expanded(
          //         flex: 2,
          //         child: OwnerSection(),
          //       ),
          //       SizedBox(
          //         height: 16,
          //       ),
          //       Expanded(
          //         flex: 5,
          //         child: ShowDataOfCustomersSection(),
          //       ),
          //     ],
          //   ),
          // ),
          // Expanded(
          //   child: Column(
          //     children: [
          //       Expanded(
          //         flex: 2,
          //         child: ComplaintsSection(),
          //       ),
          //       SizedBox(
          //         height: 16,
          //       ),
          //       Expanded(
          //         flex: 5,
          //         child: ShowDataOfOrdersSection(),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}






