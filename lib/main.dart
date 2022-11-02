import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:injir/app/routes/app_pages.dart';

import 'app/constants/constants.dart';
import 'app/translations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final storage = GetStorage();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Injir',
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: josefinSansRegular,
        colorSchemeSeed: Colors.blue,
        // colorSchemeSeed: kPrimaryColor,
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.grey.shade100.withOpacity(0.9),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      fallbackLocale: const Locale('tr'),
      locale: storage.read('langCode') != null
          ? Locale(storage.read('langCode'))
          : const Locale(
              'tr',
            ),
      translations: MyTranslations(),
      defaultTransition: Transition.fade,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      // home: MedicineApp(),
    );
  }
}
