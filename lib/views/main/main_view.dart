import 'package:flutter/material.dart';
import 'package:hagaar_trend_dashboard/views/main/widgets/custom_appbar.dart';
import 'package:hagaar_trend_dashboard/views/main/widgets/custom_drawer.dart';
import 'package:hagaar_trend_dashboard/views/main/widgets/drawer_item.dart';
import 'package:hagaar_trend_dashboard/views/main/widgets/drawer_item_model.dart';

import '../../components/app_colors.dart';
import '../../components/app_form_filed.dart';
import '../../components/app_text_styles.dart';
import '../../constant.dart';
import '../../generated/assets.dart';
import '../customer/customer_details_view.dart';
import '../customer/customers_view.dart';
import '../customer_service/customer_service_view.dart';
import '../home/view/home_view.dart';
import '../land_purchase_requests/land_purchase_requests_view.dart';
import '../serious_purchase_requests/serious_purchase_requests_details_view.dart';
import '../serious_purchase_requests/serious_purchase_requests_view.dart';
import '../system_administration/system_administration_details_view.dart';
import '../system_administration/system_administration_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  num activeIndex = 0.0;
  final List<DrawerItemModel> drawerItems = [
    DrawerItemModel(title: 'الصفحة الرئيسية', image: Assets.imagesHouse),
    DrawerItemModel(title: 'عملاء النظام', image: Assets.imagesUser),
    DrawerItemModel(title: 'طلبات الشراء الجاد', image: Assets.imagesKey),
    DrawerItemModel(title: 'طلبات شراء أرض', image: Assets.imagesTreePalm),
    DrawerItemModel(title: 'خدمة العملاء', image: Assets.imagesHeadset),
    DrawerItemModel(title: 'إدارة النظام', image: Assets.imagesGear),
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Row(
          children: [
            CustomDrawer(
              drawerItems: drawerItems,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    if (activeIndex != index) {
                      activeIndex = index;
                      setState(() {});
                    }
                  },
                  child: DrawerItem(
                    drawerItemModel: drawerItems[index],
                    isActive: activeIndex == index,
                  ),
                );
              },
            ),
            Expanded(
              child: Column(
                children: [
                  CustomAppbar(
                    onCleckBack: () {
                      activeIndex = activeIndex - 0.1;

                      setState(() {});
                    },
                    showBack: activeIndex == 1.1 || activeIndex == 2.1 || activeIndex == 5.1,
                    title:
                        activeIndex == 0
                            ? 'الصفحة الرئيسية'
                            : activeIndex == 1
                            ? 'عملاء النظام :'
                            : activeIndex == 1.1
                            ? userType == 'customer'
                                ? 'بيانات العميل :'
                                : userType == 'owner'
                                ? 'بيانات مالك العقارات :'
                                : userType == 'office'
                                ? 'بيانات مكتب العقارات :'
                                : userType == 'company'
                                ? 'بيانات شركة العقارات :'
                                : userType == 'agent'
                                ? 'بيانات المسوق :'
                                : userType == 'bank'
                                ? 'بيانات موظف بنك  :'
                                : ""
                            : activeIndex == 2 || activeIndex == 2.1
                            ? 'طلبات الشراء الجادة :'
                            : activeIndex == 3
                            ? 'طلبات شراء أرض :'
                            : activeIndex == 4
                            ? 'خدمة العملاء :'
                            : activeIndex == 5
                            ? "إدارة النظام :"
                            : activeIndex == 5.1
                            ? "تفاصيل الإتفاق :"
                            : 'Opps something went wrong',
                  ),
                  Expanded(
                    child:
                        activeIndex == 0
                            ? HomeView()
                            : activeIndex == 1
                            ? CustomersView(
                              onTapItem: () {
                                activeIndex = activeIndex + 0.1;
                                setState(() {});
                              },
                            )
                            : activeIndex == 1.1
                            ? CustomerDetailsView()
                            : activeIndex == 2
                            ? SeriousPurchaseRequestsView(
                              onTapItem: () {
                                activeIndex = activeIndex + 0.1;
                                setState(() {});
                              },
                            )
                            : activeIndex == 2.1
                            ? SeriousPurchaseRequestsDetailsView()
                            : activeIndex == 3
                            ? LandPurchaseRequestsView()
                            : activeIndex == 4
                            ? CustomerServiceView()
                            : activeIndex == 5
                            ? SystemAdministrationView(
                              onTapItem: () {
                                userType = 'owner';
                                activeIndex = activeIndex + 0.1;
                                setState(() {});
                              },
                            )
                            : activeIndex == 5.1
                            ? SystemAdministrationDetailsView()
                            : Container(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
