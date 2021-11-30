import 'package:credpal_test/ui/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () =>  const MaterialApp(
        title: 'Credpal_text',
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
      designSize: const Size(375, 726),
    );
  }
}
