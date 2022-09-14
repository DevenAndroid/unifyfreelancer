import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'routers/my_router.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

      builder: (context, child) {
        return GetMaterialApp(
          title: 'unify freelancer',
          debugShowCheckedModeBanner: false,
          initialRoute: "/splash",
          getPages: MyRouter.route,
          theme: ThemeData(
            primarySwatch: Colors.blue,
              fontFamily: 'Poppins'
          ),
        );
      },
    );
  }
}
