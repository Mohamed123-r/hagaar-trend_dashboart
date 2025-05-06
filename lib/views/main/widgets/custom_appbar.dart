import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hagaar_trend_dashboard/views/main/widgets/show_profile_data.dart';

import '../../../components/app_alert_dialog.dart';
import '../../../components/app_colors.dart';
import '../../../components/app_text_styles.dart';
import '../../../constant.dart';
import '../../../generated/assets.dart';
import 'edit_profile.dart';

class CustomAppbar extends StatefulWidget {
  const CustomAppbar({
    super.key,
    this.widget,
    required this.title, this.onCleckBack,  this.showBack =false,
  });

  final Widget? widget;
  final String title;
  final VoidCallback? onCleckBack;
  final    bool showBack  ;

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  OverlayEntry? _overlayEntry;

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  final List<Map<String, String>> notifications = [
    {
      "name": "Mohammed Hassan",
      "phone": "+966 3245678129",
      "image": "https://randomuser.me/api/portraits/men/1.jpg",
      "date": "2025-03-16"
    },
    {
      "name": "Ahmed Saleh",
      "phone": "+966 567123456",
      "image": "https://randomuser.me/api/portraits/men/2.jpg",
      "date": "2025-03-15"
    },
    {
      "name": "Omar Khaled",
      "phone": "+966 789345678",
      "image": "https://randomuser.me/api/portraits/men/3.jpg",
      "date": "2025-03-14"
    },
    {
      "name": "Hassan Mohammed",
      "phone": "+966 901567890",
      "image": "https://randomuser.me/api/portraits/men/4.jpg",
      "date": "2025-03-13"
    },
    {
      "name": "Yousef Ali",
      "phone": "+966 234789012",
      "image": "https://randomuser.me/api/portraits/men/5.jpg",
      "date": "2025-03-12"
    },
    {
      "name": "Khalid Noor",
      "phone": "+966 456901234",
      "image": "https://randomuser.me/api/portraits/men/6.jpg",
      "date": "2025-03-11"
    },
    {
      "name": "Nasser Ibrahim",
      "phone": "+966 678123456",
      "image": "https://randomuser.me/api/portraits/men/7.jpg",
      "date": "2025-03-10"
    },
    {
      "name": "Tariq Salman",
      "phone": "+966 890345678",
      "image": "https://randomuser.me/api/portraits/men/8.jpg",
      "date": "2025-03-09"
    },
    {
      "name": "Adel Hussein",
      "phone": "+966 123567890",
      "image": "https://randomuser.me/api/portraits/men/9.jpg",
      "date": "2025-03-08"
    },
    {
      "name": "Bashar Zaid",
      "phone": "+966 345789012",
      "image": "https://randomuser.me/api/portraits/men/10.jpg",
      "date": "2025-03-07"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: Row(
          children: [
            widget.showBack  ==true ?    InkWell(
              borderRadius: BorderRadius.circular(80),
              onTap:widget.onCleckBack ?? () {
                Navigator.pop(context);
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(120),
                  border: Border.all(width: 1, color: AppColors.border),
                ),
                child: GestureDetector(
                  child: Icon(
                    Icons.arrow_back_ios_new,

                    size: 16,
                  ),
                ),
              ),
            ) : SizedBox(),
            widget.showBack  ==true ?   SizedBox(
              width: 24,
            ): SizedBox(),
            Text(
              widget.title,
              style: AppTextStyles.style28W700(context),
            ),
            Spacer(),
            widget.widget ?? SizedBox(),
            Spacer(),
            Container(
             padding: EdgeInsets.zero,
                height: 64,
                decoration: BoxDecoration(
                  color: AppColors.greenWhite.withAlpha(130),
                  borderRadius: BorderRadius.circular(32),
                  border: Border.all(width: 1, color: AppColors.border),
                ),
                child: Row(
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(1200),
                      onTap: () {
                        _overlayEntry = OverlayEntry(
                          builder: (context) => Directionality(
                            textDirection: direction,
                            child: Stack(
                              children: [
                                GestureDetector(
                                  onTap: _removeOverlay,
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    color: AppColors.black.withAlpha(100),
                                  ),
                                ),
                                Positioned(
                                  top: 100,
                                  left: direction == TextDirection.ltr ? null : 15,
                                  right: direction == TextDirection.rtl ? null : 15,
                                  child: Material(
                                    color: Colors.transparent,
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Container(
                                          width: 540,
                                          height: 580,
                                          decoration: BoxDecoration(
                                            color: AppColors.white,
                                            borderRadius: BorderRadius.circular(16),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black26,
                                                blurRadius: 10,
                                                offset: Offset(0, 5),
                                              ),
                                            ],
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(16.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text(
                                                      "الإشعارات (2):",
                                                      style: AppTextStyles.style18W700(
                                                          context),
                                                    ),
                                                    GestureDetector(
                                                      onTap: _removeOverlay,
                                                      child: Icon(Icons.close),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Divider(),
                                              Expanded(
                                                child: ListView.separated(
                                                  itemBuilder: (context, index) =>
                                                      NotificationTile(
                                                          name: notifications[index]
                                                          ["name"]!,
                                                          phone: notifications[index]
                                                          ["phone"]!,
                                                          imageUrl: notifications[index]
                                                          ["image"]!,
                                                          date: notifications[index]
                                                          ["date"]!),
                                                  separatorBuilder: (context, index) =>
                                                      Divider(
                                                        color: AppColors.border,
                                                      ),
                                                  itemCount: notifications.length,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                          top: -20,
                                          left: direction == TextDirection.ltr
                                              ? null
                                              : 95,
                                          right: direction == TextDirection.rtl
                                              ? null
                                              : 95,
                                          child: CustomPaint(
                                            size: Size(40, 40),
                                            painter: TrianglePainter(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );

                        Overlay.of(context).insert(_overlayEntry!);
                      },
                      child: Container(
                        width: 64,
                        height: 64,
                        decoration: BoxDecoration(
                          color: AppColors.greenWhite.withAlpha(0),
                          shape: BoxShape.circle,
                      ),
                        child: SvgPicture.asset(
                          Assets.imagesBellSimple,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),

                    InkWell(
                      borderRadius: BorderRadius.circular(1200),
                      onTap: () {  showDialog(
                          context: context,
                          builder: (context) => AppAlertDialog(
                        title: "بيانات الحساب",
                        body: ShowProfileData(),
                      ));
                      },
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.transparent,
                        backgroundImage: NetworkImage(
                            "https://www.w3schools.com/w3images/avatar2.png"),
                      ),
                    ),
                  ],
                )),


          ],
        ),
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String name;
  final String date;
  final String phone;
  final String? imageUrl;

  const NotificationTile(
      {super.key,
      required this.name,
      required this.date,
      required this.phone,
      this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        alignment: direction == TextDirection.ltr
            ? Alignment.bottomLeft
            : Alignment.bottomRight,
        children: [
          CircleAvatar(
            radius: 32,
            backgroundColor: Colors.transparent,
            backgroundImage: imageUrl != null
                ? NetworkImage(imageUrl!)
                : AssetImage("assets/profile.jpg") as ImageProvider,
          ),
          Positioned(
            right: direction == TextDirection.rtl ? 5 : null,
            left: direction == TextDirection.ltr ? 5 : null,
            child: Icon(
              Icons.circle,
              color: AppColors.greenWhite,
              size: 14,
            ),
          ),
        ],
      ),
      title: Text(
        name,
        style: AppTextStyles.style16W400(context),
      ),
      subtitle: Text(
        phone,
        style: AppTextStyles.style16W400(context),
      ),
      trailing: Text(
        date,
        style: AppTextStyles.style14W400(context).copyWith(),
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width / 2, 0)
      ..lineTo(size.width, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
