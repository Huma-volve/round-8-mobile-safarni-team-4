import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../colors/app_colors.dart';

abstract class AppThemes {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.transparent,
      surfaceTintColor: AppColors.transparent,
      centerTitle: true,
      titleSpacing: 0,
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 18,
        color: AppColors.black,
        fontWeight: FontWeight.w500,
      ),
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.poppins(
        fontSize: 22,
        color: AppColors.black,
        fontWeight: FontWeight.w600,
      ),
      displayLarge: GoogleFonts.poppins(
        fontSize: 20,
        color: AppColors.black,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: GoogleFonts.poppins(
        fontSize: 14,
        color: AppColors.black,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: GoogleFonts.poppins(
        fontSize: 14,
        color: AppColors.black,
        fontWeight: FontWeight.w400,
      ),
      labelLarge: GoogleFonts.poppins(
        fontSize: 14,
        color: AppColors.black,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: GoogleFonts.poppins(
        fontSize: 12,
        color: AppColors.black,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: GoogleFonts.poppins(
        fontSize: 11,
        color: AppColors.black,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: GoogleFonts.poppins(
        fontSize: 16,
        color: AppColors.black,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: GoogleFonts.spaceMono(
        fontSize: 14,
        color: AppColors.black,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: GoogleFonts.poppins(
        fontSize: 12,
        color: AppColors.black,
        fontWeight: FontWeight.w400,
      ),
      displayMedium: GoogleFonts.poppins(
        fontSize: 14,
        color: AppColors.black,
        fontWeight: FontWeight.w400,
      ),
    ),
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.mainColorLight,
      onPrimary: AppColors.white,
      secondary: AppColors.white,
      onSecondary: AppColors.black,
      error: Colors.redAccent,
      onError: AppColors.white,
      surface: AppColors.black,
      onSurface: AppColors.black,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: AppColors.transparent,
      iconTheme: WidgetStateProperty.resolveWith((states) {
        Color color;
        if (states.contains(WidgetState.selected)) {
          color = AppColors.mainColorLight;
        } else {
          color = AppColors.black[20]!;
        }
        return IconThemeData(color: color, size: 30);
      }),
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return GoogleFonts.geo(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: AppColors.mainColorLight,
          );
        } else {
          return GoogleFonts.geo(color: AppColors.black[20]!);
        }
      }),
      indicatorColor: Colors.transparent,
    ),
    inputDecorationTheme: InputDecorationTheme(
      errorMaxLines: 4,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      prefixIconColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.focused) ||
            states.contains(WidgetState.pressed)) {
          return AppColors.mainColorLight;
        } else {
          return AppColors.black[60]!;
        }
      }),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(color: AppColors.gray),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(color: AppColors.gray),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(color: AppColors.mainColorLight),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(color: AppColors.gray),
      ),

      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.red),
        borderRadius: BorderRadius.circular(4),
      ),

      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(color: Colors.red),
      ),
      hintStyle: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppColors.gray,
      ),
    ),

    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        padding: const WidgetStatePropertyAll(
          EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        textStyle: WidgetStatePropertyAll(
          GoogleFonts.poppins(
            fontSize: 16,
            color: AppColors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.black[20],
        padding: const EdgeInsetsDirectional.symmetric(
          vertical: 12,
          horizontal: 24,
        ),
        textStyle: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: const WidgetStatePropertyAll(
          EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        textStyle: WidgetStatePropertyAll(
          GoogleFonts.geo(
            fontSize: 16,
            color: AppColors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        padding: EdgeInsets.zero,
        foregroundColor: AppColors.black,
        disabledForegroundColor: AppColors.black[40],
      ),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: AppColors.black[60]!,
      elevation: 0,
      backgroundColor: Colors.transparent,
      showUnselectedLabels: true,
      selectedItemColor: AppColors.mainColorLight,
      selectedLabelStyle: GoogleFonts.geo(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppColors.mainColorLight,
      ),
    ),
    tabBarTheme: TabBarThemeData(
      dividerColor: AppColors.transparent,
      dividerHeight: 0,
      tabAlignment: TabAlignment.start,
      overlayColor: WidgetStateColor.transparent,
      indicator: BoxDecoration(
        shape: BoxShape.rectangle,
        color: AppColors.mainColorLight,
        borderRadius: const BorderRadius.all(Radius.circular(11)),
      ),
      labelStyle: GoogleFonts.poppins(color: AppColors.white),
      unselectedLabelStyle: GoogleFonts.poppins(color: AppColors.black),
      labelPadding: const EdgeInsets.symmetric(horizontal: 4),
      indicatorSize: TabBarIndicatorSize.label,
    ),
  );
}
