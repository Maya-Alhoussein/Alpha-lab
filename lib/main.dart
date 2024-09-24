import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:lab_app/app/modules/login/views/login_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            // initialRoute: AppPages.INITIAL,
            // getPages: AppPages.routes,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              inputDecorationTheme: InputDecorationTheme(
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(32.0)),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(32.0)),
              ),
              fontFamily: 'RobotoSlab',
              listTileTheme: ListTileThemeData(
                tileColor: Colors.white,
                textColor: Colors.white,
                iconColor: Colors.white,
              ),
            ),

            home: child,
          );
        },
        child:  LoginView()),
  );
}
