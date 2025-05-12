import 'package:flutter/material.dart';
import '../customer/widgets/customer_deals_item.dart';
import '../customer/widgets/deal_details_dialog.dart' show DealDetailsDialog;

class SeriousPurchaseRequestsView extends StatelessWidget {
  const SeriousPurchaseRequestsView({super.key, required this.onTapItem});

  final Function() onTapItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
      child: GridView.builder(
        padding: EdgeInsets.zero,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 4 / 1.6,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: 40,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: onTapItem,
            borderRadius: BorderRadius.circular(32),
            child: CustomerDealsItem(),
          );
        },
      ),
    );
  }
}
