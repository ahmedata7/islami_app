import 'package:flutter/material.dart';
import 'package:islami_app/Home/hadeth/Hadeth_view.dart';

class Hadethdetails extends StatelessWidget {
  String hadethtitle;
  int hadethindex;
  Hadethdetails(this.hadethtitle, this.hadethindex);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
      child: SizedBox(
        width: double.infinity,
        child: OutlinedButton(onPressed: () {
          Navigator.pushNamed(context, HadethView.routeName,arguments: hadethDetailsArgs(hadethName: hadethtitle, hadethindex: hadethindex));
        }, child:Text(
          hadethtitle,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
        ),style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),),),
      ),
    );
  }
}

class hadethDetailsArgs {
  String hadethName;
  int hadethindex;
  hadethDetailsArgs({required this.hadethName, required this.hadethindex});
}
