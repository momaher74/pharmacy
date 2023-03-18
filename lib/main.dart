
import 'package:clean_arch/utils/constant.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:sizer/sizer.dart';

import 'modules/add_drug_module/add_drug_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Sizer',
          theme: ThemeData(
            scaffoldBackgroundColor: Constant.bgColor,
            appBarTheme: AppBarTheme(
              color: Constant.bgColor,
              elevation: 0,
              iconTheme: IconThemeData(
                color: Constant.gColor,
              ),
            ),
          ),
          themeMode: ThemeMode.light,
          home: AddDrugScreen(),
        );
      },
    );
  }
}
