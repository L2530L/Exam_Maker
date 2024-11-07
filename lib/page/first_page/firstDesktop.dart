import 'package:exam_ai/components/hexagon.dart';
import 'package:exam_ai/components/homeCard.dart';
import 'package:exam_ai/components/mockExamCreator.dart';
import 'package:exam_ai/components/navigator.dart';
import 'package:exam_ai/components/search.dart';
import 'package:exam_ai/components/teacherResource.dart';
import 'package:exam_ai/page/second_page/secondDesktop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class FirstDesktop extends StatelessWidget {
  const FirstDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        title: appBar(),
        toolbarHeight: 110,
      ),
      body: Column(
        children: [
          
          Expanded(
            child: Stack(children: [
              Positioned.fill(
                child: CustomPaint(
                  painter: HexagonPatternPainter(
                    hexagonSize: 150,
                    spacing: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    navigator(context),
                    SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const HomeCard(),
                        const TeacherResourceCard(),
                        const MockExamCreatorCard(),
                      ],
                    ),
                  ],
                ),
              ),
              BottomBar(),
            ]),
          )
        ],
      ),
    );
  }

  Widget BottomBar() {
    return Column(
      children: [
        Expanded(child: Container()),
        Container(
          height: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.pink.shade300,
                Colors.pink.shade500,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ],
    );
  }

  Row appBar() {
    return Row(
      children: [
        SizedBox(width:50),
        Spacer(),
        Text(
            'MOCKexam',
            style: TextStyle(
                color: Colors.orangeAccent,
                fontWeight: FontWeight.bold,
                fontSize: 50),
          ),
        Spacer(),
        const Text(
          'Resources',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
