import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_bonfire/utils/theme/app_colors.dart';

class AppTheme {
  // Light Theme
  final ThemeData lightThemeData = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.neutralWhite,
    scaffoldBackgroundColor: AppColors.neutralWhite,
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        fontFamily: 'Proxima',
        fontSize: 14.0.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.ash,
      ),
      
      headlineLarge: TextStyle(
        fontFamily: 'Proxima',
        fontSize: 34.0.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.headlinePurple,
      ),
    
     titleLarge:TextStyle(
        fontFamily: 'Proxima',
        fontSize: 20.0.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.neutralWhite,
      ) ,
      labelMedium: TextStyle(
        fontFamily: 'Proxima',
        fontSize: 12.0.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.secondAsh,
      ),
      labelSmall:  TextStyle(
        fontFamily: 'Proxima',
        fontSize: 11.0.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.neutralWhite,
      ),
      
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.neutralWhite,
      titleTextStyle: TextStyle(
        fontFamily: 'Proxima',
        fontSize: 20.0.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.neutralWhite,
      ) ,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(
        fontFamily: 'Proxima',
        fontSize: 20.0.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.black,
      ) ,
        backgroundColor: AppColors.iconPurple,
        side: const BorderSide(color: AppColors.iconPurple, width: 1.0),
      ),
    ),
  );

// Define Dark Theme (optional)
  final ThemeData darkThemeData = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blueGrey,
    primaryColor: Colors.blueGrey,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blueGrey,
      titleTextStyle: TextStyle(
        fontFamily: 'Proxima',
        fontSize: 20.0.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.neutralWhite,
      ) ,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(
        fontFamily: 'Proxima',
        fontSize: 20.0.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.neutralWhite,
      ) ,
      ),
    ),
  );
}
