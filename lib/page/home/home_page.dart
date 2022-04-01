import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miroru_web/config/color.dart';
import 'package:miroru_web/page/home/widget/home_send_widget.dart';
import 'package:miroru_web/page/setting/terms_of_service/home_privacy.dart';
import 'package:miroru_web/page/setting/terms_of_service/terms_of_service_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        centerTitle: false,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          'miroru',
          style: TextStyle(
            color: accentColor,
            fontFamily: "Artyway",
            fontSize: 30.sp,
            fontWeight: FontWeight.normal,
            letterSpacing: 1.3,
          ),
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(TermsOfServicePage.route);
              },
              child: ListTile(
                title: Text(
                  "利用規約",
                  style: TextStyle(
                    color: blackColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(HomPrivacy.route);
              },
              child: ListTile(
                title: Text(
                  "プライバシーポリシー",
                  style: TextStyle(
                    color: blackColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          child: Stack(
            children: [
              Positioned(
                top: 30.h,
                left: 10.w,
                child: Column(
                  children: [
                    Text(
                      '匿名でランダムな',
                      style: TextStyle(
                        color: blackColor,
                        fontSize: 18.w,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 60,
                      ),
                      child: Text(
                        'チャットアプリ',
                        style: TextStyle(
                          color: blackColor,
                          fontSize: 18.w,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const HomeSendWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
