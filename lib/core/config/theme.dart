import "package:coffee_shop/core/colors.dart";
import "package:flutter/material.dart";

final lightTheme = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.primary,
    onPrimary: AppColors.white,
    secondary: AppColors.secondary,
    onSecondary: AppColors.white,
    error: AppColors.error,
    onError: AppColors.white,
    background: AppColors.white,
    onBackground: AppColors.textColor,
    surface: AppColors.white,
    onSurface: AppColors.textColor,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
  
    style: ButtonStyle(
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    ),
  ),
);
