import 'package:exam_ai/components/homeCard.dart';
import 'package:exam_ai/components/mockExamCreator.dart';
import 'package:exam_ai/components/navigator.dart';
import 'package:exam_ai/components/search.dart';
import 'package:exam_ai/components/teacherResource.dart';
import 'package:exam_ai/page/second_page/secondDesktop.dart';
import 'package:flutter/material.dart';

class FirstMobile extends StatefulWidget {
  @override
  _FirstMobile createState() => _FirstMobile();
}

class _FirstMobile extends State<FirstMobile> {
  bool menuOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        // Header
        Container(
          padding: EdgeInsets.all(16),
          color: Colors.orangeAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'MOCKexam',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              IconButton(
                icon: Icon(menuOpen ? Icons.close : Icons.menu),
                onPressed: () {
                  setState(() {
                    menuOpen = !menuOpen;
                  });
                },
              ),
            ],
          ),
        ),

        // Main
        Expanded(
          child: ListView(
            children: [
              Container(margin: EdgeInsets.all(20), child: navigator(context)),
              SizedBox(height: 16),
              if (menuOpen) ...[
                HomeCard(),
                SizedBox(height: 16),
                TeacherResourceCard(),
                SizedBox(height: 16),
                MockExamCreatorCard(),
              ],
            ],
          ),
        ),
      ]),
    );
  }
}
