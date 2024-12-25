import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stroll_bonfire/feature/stroll_bonfire/screen/stroll_bonfire_screen.dart';
import 'package:stroll_bonfire/utils/theme/app_theme.dart';
import 'package:stroll_bonfire/widgets/sizer_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
  ));

  runApp(const MyApp());
  (dynamic error, dynamic stack) {
    if (kDebugMode) {
      print(error);
      print(stack);
    }
  };
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppSizer(
      child: ScreenUtilInit(
        //setup to fit into bigger screens
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Stroll Bonfire',
              theme: AppTheme().lightThemeData,
              home: const StrollBonfireScreen());
        },
      ),
    );
  }
}
