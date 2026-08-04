import 'package:flutter/material.dart';
import 'package:islami_app/getImagePath.dart';

class Defaultscreen extends StatelessWidget {
  Widget body;
  Defaultscreen({required this.body});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(getFullPath("main_background.png"), fit: BoxFit.cover),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              "Islami",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
          ),
          body: body,
        ),
      ],
    );
  }
}
