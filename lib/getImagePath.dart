import 'package:flutter/cupertino.dart';
import 'package:islami_app/l10n/app_localizations.dart';

String getFullPath(String title){
  String path = "assets/images/$title";
  return path;
}

 AppLocalizations appTranslation(BuildContext context){
   return AppLocalizations.of(context)!;
}