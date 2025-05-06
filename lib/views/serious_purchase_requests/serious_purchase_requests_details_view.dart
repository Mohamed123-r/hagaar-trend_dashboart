import 'package:flutter/material.dart';

import '../../constant.dart';

class SeriousPurchaseRequestsDetailsView extends StatelessWidget {
  const SeriousPurchaseRequestsDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            // Expanded(
            //   flex: 1,
            //   child: userType=="office" || userType=="company"? OfficeDataSection():CustomerDataSection(),
            // ),
            // Left: Deals
            const SizedBox(width: 24),
            // Expanded(
            //   flex: 2,
            //   child: CustomerDealsSection(),
            // ),

            // Right: Customer Info
          ],
        ),
      ),
    );
  }
}
