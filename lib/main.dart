import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:miroru_web/page/home/home_page.dart';
import 'package:miroru_web/page/setting/terms_of_service/home_privacy.dart';
import 'package:miroru_web/page/setting/terms_of_service/terms_of_service_page.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
        title: 'miroru[みろる]チャット - 匿名でランダムなチャットアプリ',
        debugShowCheckedModeBanner: false,
        // home: const HomePage(),
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case HomePage.route:
              return MaterialPageRoute(
                builder: (context) => const HomePage(),
              );
            case TermsOfServicePage.route:
              return MaterialPageRoute(
                builder: (context) => const TermsOfServicePage(),
              );
            case HomPrivacy.route:
              return MaterialPageRoute(
                builder: (context) => const HomPrivacy(),
              );
          }
          return null;
        },
        initialRoute: HomePage.route,
        routes: {
          HomePage.route: (context) => const HomePage(),
          TermsOfServicePage.route: (context) => const TermsOfServicePage(),
          HomPrivacy.route: (context) => const HomPrivacy(),
        },
        builder: (context, widget) {
          //add this line
          ScreenUtil.setContext(context);
          return MediaQuery(
            //Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
        theme: ThemeData(
          textTheme: TextTheme(
            button: TextStyle(fontSize: 45.sp),
          ),
        ),
      ),
    );
  }
}
