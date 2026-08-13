import 'package:flutter/material.dart';
import 'package:islami_app/Home/hadeth/Hadeth_view.dart';
import 'package:islami_app/Home/home_screen.dart';
import 'package:islami_app/Home/quran/surah_view.dart';
import 'package:islami_app/Splash_Screen/splash_screen.dart';
import 'package:islami_app/l10n/app_localizations.dart';
import 'package:islami_app/providers/themeProvider.dart';
import 'package:islami_app/providers/translateProvider.dart';
import 'package:islami_app/themes/theme_data.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create:(context) =>  ThemeProvider(),),
    ChangeNotifierProvider(create:(context) =>  TranslateProvider(),)
  ],
      child: IslamiApp()));
}

class IslamiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    TranslateProvider translateProvider = Provider.of<TranslateProvider>(context);
    return MaterialApp(
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SurahView.routeName: (context) => SurahView(),
        HadethView.routeName: (context) => HadethView(),
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: translateProvider.currantLocale,
      darkTheme: themeStyle.darkTheme,
      theme: themeStyle.lightTheme,
      themeMode: themeProvider.currantTheme,
    );
  }
}
