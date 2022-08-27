import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:movie_app_ui/services/theme_services.dart';
import 'package:movie_app_ui/theme/themes.dart';
import 'package:movie_app_ui/view/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      // statusBarIconBrightness: Brightness.light,
      // systemNavigationBarColor: Colors.transparent,
    ));
    return GetMaterialApp(
        title: 'Stranger thing app ',
        //specifc your themes
        theme: Themes().lighTheme,
        darkTheme: Themes().darkTheme,
        themeMode: ThemeMode.light,
        // themeMode: ThemeService().theme,
        debugShowCheckedModeBanner: false,
        home: const HomePage());
  }
}
