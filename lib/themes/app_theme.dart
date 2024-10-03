

import 'package:flutter/material.dart';
import 'package:thememode/themes/app_color.dart';

class AppTheme{
  static ThemeData themeData(bool isDark){
    return ThemeData(
    scaffoldBackgroundColor:
    isDark? AppColor.colorDarkBlue : AppColor.colorLightBlue,
        canvasColor:
        isDark? AppColor.colorDarkCanvus : AppColor.colorLightCanvus,
      colorScheme:
      isDark? ColorScheme.dark() : ColorScheme.light(),
      appBarTheme:
      isDark? AppBarTheme(
        color: AppColor.colorDarkBlue,
        titleTextStyle: TextStyle(color: AppColor.colorWhite,fontSize: 20),
        iconTheme: IconThemeData(color: AppColor.colorWhite)
      )
      :AppBarTheme(
        color: AppColor.colorLightBlue,
        titleTextStyle: TextStyle(color: AppColor.colorDarkBlue,fontSize: 20),
        iconTheme: IconThemeData(color: AppColor.colorDarkBlue)
    ),
      tabBarTheme: isDark?
    TabBarTheme(
        labelColor: AppColor.colorDarkBlue,
        unselectedLabelColor: AppColor.colorGrey,
      )
        : TabBarTheme(
    labelColor: AppColor.colorLightBlue,
    unselectedLabelColor: AppColor.colorGrey,
      ),
    );
  }
}