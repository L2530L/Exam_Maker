import 'package:exam_ai/constants/const.dart';
import 'package:exam_ai/page/second_page/secondDesktop.dart';
import 'package:exam_ai/page/second_page/secondMobile.dart';
import 'package:exam_ai/page/second_page/secondTablet.dart';
import 'package:flutter/material.dart';

class SecondHome extends StatefulWidget {
  const SecondHome({super.key});

  @override
  State<SecondHome> createState() => _SecondHomeState();
}

class _SecondHomeState extends State<SecondHome> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth <= mobileView) {
        return SecondMobile();
      } else if (constraints.maxWidth >= desktopView){
        return SecondDesktop();
      } else {
        return SecondMobile();
      }
    },);
  }
}