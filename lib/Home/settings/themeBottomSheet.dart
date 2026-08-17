import 'package:flutter/material.dart';
import 'package:islami_app/getImagePath.dart';
import 'package:islami_app/providers/themeProvider.dart';
import 'package:islami_app/themes/theme_data.dart';
import 'package:provider/provider.dart';

class Themebottomsheet extends StatefulWidget {
  @override
  State<Themebottomsheet> createState() => _ThemebottomsheetState();
}

class _ThemebottomsheetState extends State<Themebottomsheet> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: (){
                setState(() {
                  themeProvider.changeTheme(ThemeMode.light);
                });
              },
            child: themeProvider.isDark()?selecteItem(context,appTranslation(context).lightTheme):unSelectedItem(context, appTranslation(context).lightTheme)),
            Divider(height: 20,),
            InkWell(
                onTap: (){
                  setState(() {
                    themeProvider.changeTheme(ThemeMode.dark);
                  });
                },
                child: themeProvider.isDark()?unSelectedItem(context, appTranslation(context).darkTheme):selecteItem(context,appTranslation(context).darkTheme))
          ],
        ),
      ),
    );
  }

  Widget selecteItem(BuildContext cotext ,String text){
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text(text),
    Icon(Icons.check_box)
    ]
    );
  }

  Widget unSelectedItem(BuildContext context , String text){
    return Expanded(
      child: Row(
        children: [
          Text(text),
        ],
      ),
    );
  }
}
