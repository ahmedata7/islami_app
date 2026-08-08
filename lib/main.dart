import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app/Home/hadeth/Hadeth_view.dart';
import 'package:islami_app/Home/home_screen.dart';
import 'package:islami_app/Home/quran/surah_view.dart';
import 'package:islami_app/Splash_Screen/splash_screen.dart';
import 'package:islami_app/l10n/app_localizations.dart';
import 'package:islami_app/themes/theme_data.dart';

void main() {
  runApp(IslamiApp());
}

class IslamiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SurahView.routeName: (context) => SurahView(),
        HadethView.routeName: (context) => HadethView(),
      },
      theme: themeStyle.lightTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale("ar"),
      darkTheme: themeStyle.darkTheme,
      themeMode:ThemeMode.dark,
    );
  }
}
