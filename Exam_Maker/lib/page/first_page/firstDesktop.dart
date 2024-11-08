import 'package:exam_ai/components/hexagon.dart';
import 'package:exam_ai/components/homeCard.dart';
import 'package:exam_ai/components/mockExamCreator.dart';
import 'package:exam_ai/components/navigator.dart';
import 'package:exam_ai/components/teacherResource.dart';
import 'package:exam_ai/page/loginPage.dart';
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
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: appBar(context),
        toolbarHeight: 110,

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
                    SizedBox(
                      height: 25,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HomeCard(),
                        TeacherResourceCard(),
                        MockExamCreatorCard(),
                      ],
                    ),
                  ],
                ),
              ),
              BottomBar(),
              Positioned(
                child: Image.asset('bee.png', height: 250,width:250),
                bottom: 135,
                left:600,
              ),
              Positioned(
                child: Image.asset('person.png', height: 500,width:500, fit: BoxFit.fill,),
                bottom: 5,
                left:0,
                
              ),
              Positioned(
                child: Image.asset('teacher.png', height: 500,width:250, fit: BoxFit.fill,),
                top: 5,
                right:50,
                
              ),
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

  Row appBar(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 50),
        Spacer(),
        Image.asset(
          'assets/logo.png',
          height: 175,
          width: 175,
        ),
        Text(
          'MOCKexam',
          style: TextStyle(
              color: Colors.orangeAccent,
              fontWeight: FontWeight.bold,
              fontSize: 75),
        ),
        Spacer(),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
            );
          },
          child: Text(
            'Log in/Register',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
