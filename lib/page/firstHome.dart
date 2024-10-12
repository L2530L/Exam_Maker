import 'package:exam_ai/constants/const.dart';
import 'package:exam_ai/page/firstDesktop.dart';
import 'package:exam_ai/page/firstMobile.dart';
import 'package:exam_ai/page/firstTablet.dart';
import 'package:flutter/material.dart';

class firstHome extends StatefulWidget {
  const firstHome({super.key});

  @override
  State<firstHome> createState() => _firstHomeState();
}

class _firstHomeState extends State<firstHome> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth <= mobileView) {
        return FirstMobile();
      } else if (constraints.maxWidth >= desktopView){
        return FirstDesktop();
      } else {
        return FirstTablet();
      }
    },);
  }
}