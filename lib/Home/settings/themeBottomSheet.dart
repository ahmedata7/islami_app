import 'package:flutter/material.dart';

class Themebottomsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            selecteItem("dark"),
            Divider(height: 20,),
            unSelectedItem("light")
          ],
        ),
      ),
    );
  }
  Widget selecteItem(String text){
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text(text),
    Icon(Icons.check_box)
    ]
    );
  }
  Widget unSelectedItem(String text){
    return Text(text);
  }
}
