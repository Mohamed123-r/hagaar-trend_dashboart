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
import '../home/view/home_view.dart';


class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  num activeIndex = 0.0;
  final List<DrawerItemModel> drawerItems = [
    DrawerItemModel(title: 'الصفحة الرئيسية', image: Assets.imagesHouse),
    DrawerItemModel(title: 'العملاء', image: Assets.imagesUser),
    DrawerItemModel(title: 'مالك  /  مكتب عقارات', image: Assets.imagesArmchair),
    DrawerItemModel(
        title: 'المسوقيين العقاريين', image: Assets.imagesBuildings),
    DrawerItemModel(title: 'خدمة العملاء', image: Assets.imagesHeadset),

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
                      widget: activeIndex == 1.2 ||
                              activeIndex == 1.31 ||
                              activeIndex == 1.32 ||
                              activeIndex == 1.5
                          ? Row(
                              children: [
                                Image.asset(Assets.imagesPress,
                                    width: 48, height: 48),
                                SizedBox(
                                  width: 12,
                                ),
                                AppSearchTextFormField(
                                  labelText: activeIndex == 1.2
                                      ? "البحث عن عميل"
                                      : activeIndex == 1.31 ||
                                              activeIndex == 1.32
                                          ? "البحث عن مندوب"
                                          : activeIndex == 1.5
                                              ? "البحث عن طلب بال id"
                                              : "",
                                )
                              ],
                            )
                          : activeIndex == 5.12 || activeIndex == 5.11
                              ? Row(
                                  children: [
                                    Image.asset(Assets.imagesPress,
                                        width: 32, height: 32),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      "المملكة العربية السعودية",
                                      style: AppTextStyles.style18W700(context),
                                    )
                                  ],
                                )
                              : null,
                      title: activeIndex == 0
                          ? 'صباح الخير : أحمد عادل'
                          : activeIndex == 1 || activeIndex == 1.1
                              ? 'إدارة سير العمل :'
                              : activeIndex == 1.2
                                  ? 'العملاء :'
                                  : activeIndex == 1.3 || activeIndex == 1.31
                                      ? 'المندوبين :'
                                      : activeIndex == 1.32
                                          ? 'المندوبين المحظورين :'
                                          : activeIndex == 1.4
                                              ? 'طلبات إنضمام المندوبين :'
                                              : activeIndex == 1.5 ||
                                                      activeIndex == 1.51
                                                  ? 'الطلبات :'
                                                  : activeIndex == 2 ||
                                                          activeIndex == 2.1
                                                      ? 'الشكاوي :'
                                                      : activeIndex == 3 ||
                                                              activeIndex == 3.1
                                                          ? 'لتسويات المالية :'
                                                          : activeIndex == 4
                                                              ? 'الإعلانات :'
                                                              : activeIndex ==
                                                                          5 ||
                                                                      activeIndex ==
                                                                          5.1 ||
                                                                      activeIndex ==
                                                                          5.11 ||
                                                                      activeIndex ==
                                                                          5.12
                                                                  ? 'التقارير :'
                                                                  : 'Opps something went wrong'),
                  Expanded(
                      child: activeIndex == 0
                          ? HomeView()
                         // : activeIndex == 1
                              // ? ManageWorkProcessFromWorkflowView(
                              //     onTapCountry: () {
                              //       activeIndex = activeIndex + 0.1;
                              //       setState(() {});
                              //     },
                              //   )
                              // : activeIndex == 1.1
                              //     ? ManageWorkProcessDetailsFromWorkflowView(
                              //         onPressedBack: () {
                              //           activeIndex = activeIndex - 0.1;
                              //           setState(() {});
                              //         },
                              //         onTapItem1: () {
                              //           activeIndex = 1.2;
                              //           setState(() {});
                              //         },
                              //         onTapItem2: () {
                              //           activeIndex = 1.3;
                              //           setState(() {});
                              //         },
                              //         onTapItem3: () {
                              //           activeIndex = 1.4;
                              //           setState(() {});
                              //         },
                              //         onTapItem4: () {
                              //           activeIndex = 1.5;
                              //           setState(() {});
                              //         },
                              //         onTapItem5: () {
                              //           activeIndex = 1.6;
                              //           setState(() {});
                              //         },
                              //         onTapItem6: () {
                              //           activeIndex = 1.7;
                              //           setState(() {});
                              //         },
                              //       )
                              //     : activeIndex == 1.2
                              //         ? ClientsView(
                              //             onPressedBack: () {
                              //               activeIndex = 1.1;
                              //               setState(() {});
                              //             },
                              //           )
                              //         : activeIndex == 1.3
                              //             ? ManageDriversView(
                              //                 onPressedBack: () {
                              //                   activeIndex = 1.1;
                              //                   setState(() {});
                              //                 },
                              //                 onTapItem1: () {
                              //                   activeIndex = 1.31;
                              //                   setState(() {});
                              //                 },
                              //                 onTapItem2: () {
                              //                   activeIndex = 1.32;
                              //                   setState(() {});
                              //                 },
                              //               )
                              //             : activeIndex == 1.31
                              //                 ? DriversView(
                              //                     onPressedBack: () {
                              //                       activeIndex = 1.3;
                              //                       setState(() {});
                              //                     },
                              //                   )
                              //                 : activeIndex == 1.32
                              //                     ? DriversBlockedView(
                              //                         onPressedBack: () {
                              //                           activeIndex = 1.3;
                              //                           setState(() {});
                              //                         },
                              //                       )
                              //                     : activeIndex == 1.4
                              //                         ? DriversRequestsView(
                              //                             onPressedBack: () {
                              //                               activeIndex = 1.1;
                              //                               setState(() {});
                              //                             },
                              //                           )
                              //                         : activeIndex == 1.5
                              //                             ? OrderView(
                              //                                 onPressedBack:
                              //                                     () {
                              //                                   activeIndex =
                              //                                       1.1;
                              //                                   setState(() {});
                              //                                 },
                              //                                 onTapItem: () {
                              //                                   activeIndex =
                              //                                       1.51;
                              //                                   setState(() {});
                              //                                 },
                              //                               )
                              //                             : activeIndex == 1.51
                              //                                 ? OrderDetailsView(
                              //                                     onPressedBack:
                              //                                         () {
                              //                                       activeIndex =
                              //                                           1.5;
                              //                                       setState(
                              //                                           () {});
                              //                                     },
                              //                                   )
                              //                                 : activeIndex ==
                              //                                         1.6
                              //                                     ? ShowExsistedAreasView(
                              //                                         onPressedBack:
                              //                                             () {
                              //                                           activeIndex =
                              //                                               1.1;
                              //                                           setState(
                              //                                               () {});
                              //                                         },
                              //                                       )
                              //                                     : activeIndex ==
                              //                                             1.7
                              //                                         ? AddNewAreaView(
                              //                                             onPressedBack:
                              //                                                 () {
                              //                                               activeIndex =
                              //                                                   1.1;
                              //                                               setState(() {});
                              //                                             },
                              //                                           )
                              //                                         : activeIndex ==
                              //                                                 2
                              //                                             ? ManageWorkProcessFromComplaintsView(
                              //                                                 onTapCountry: () {
                              //                                                   activeIndex = 2.1;
                              //                                                   setState(() {});
                              //                                                 },
                              //                                               )
                              //                                             : activeIndex == 2.1
                              //                                                 ? ComplaintsView(
                              //                                                     onPressedBack: () {
                              //                                                       activeIndex = 2;
                              //                                                       setState(() {});
                              //                                                     },
                              //                                                   )
                              //                                                 : activeIndex == 3
                              //                                                     ? ManageWorkProcessFromFinancialView(
                              //                                                         onTapCountry: () {
                              //                                                           activeIndex = 3.1;
                              //                                                           setState(() {});
                              //                                                         },
                              //                                                       )
                              //                                                     : activeIndex == 3.1
                              //                                                         ? FinancialView(
                              //                                                             onPressedBack: () {
                              //                                                               activeIndex = 3;
                              //                                                               setState(() {});
                              //                                                             },
                              //                                                           )
                              //                                                         : activeIndex == 4
                              //                                                             ? AdvertisingView()
                              //                                                             : activeIndex == 5
                              //                                                                 ? ManageWorkProcessFromReportsView(
                              //                                                                     onTapCountry: () {
                              //                                                                       activeIndex = 5.1;
                              //                                                                       setState(() {});
                              //                                                                     },
                              //                                                                   )
                              //                                                                 : activeIndex == 5.1
                              //                                                                     ? ManageReportsView(
                              //                                                                         onTapItem1: () {
                              //                                                                           activeIndex = 5.11;
                              //                                                                           setState(() {});
                              //                                                                         },
                              //                                                                         onTapItem2: () {
                              //                                                                           activeIndex = 5.12;
                              //                                                                           setState(() {});
                              //                                                                         },
                              //                                                                         onPressedBack: () {
                              //                                                                           activeIndex = 5;
                              //                                                                           setState(() {});
                              //                                                                         },
                              //                                                                       )
                              //                                                                     : activeIndex == 5.11
                              //                                                                         ? ReportsView(
                              //                                                                             onPressedBack: () {
                              //                                                                               activeIndex = 5.1;
                              //                                                                               setState(() {});
                              //                                                                             },
                              //                                                                           )
                              //                                                                         : activeIndex == 5.12
                              //                                                                             ? ReportsFinancialView(
                              //                                                                                 onPressedBack: () {
                              //                                                                                   activeIndex = 5.1;
                              //                                                                                   setState(() {});
                              //                                                                                 },
                              //                                                                               )
                                                                                                         : Container()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
