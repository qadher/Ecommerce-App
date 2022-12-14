import 'package:bot_toast/bot_toast.dart';
import 'package:ecommerce_app/view/constants/appConstants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';
import 'routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) => GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Ecommerce',
              builder: BotToastInit(),
              theme: ThemeData(
                scaffoldBackgroundColor: AppColor.kWhite,
                fontFamily: 'poppins',
              ),
              initialRoute: '/splash',
              getPages: Routes.routes,
            ));
  }
}
