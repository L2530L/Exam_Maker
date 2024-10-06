import 'dart:js_interop';

import 'package:exam_ai/components/homeCard.dart';
import 'package:exam_ai/components/mockExamCreator.dart';
import 'package:exam_ai/components/teacherResource.dart';
import 'package:exam_ai/page/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'MOCKexam',
                  style: TextStyle(
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 50),
                ),
              ),
              Text(
                'Resources',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              SearchBar(
                constraints: BoxConstraints(maxWidth: 250),
                padding: WidgetStatePropertyAll(EdgeInsets.all(10)),
                trailing: <Widget>[Icon(Icons.search)],
              ),
            ],
          ),
          FilledButton(
            style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.purple)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                );
              },
              child: const Text('Create an Exam or Quiz')),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const HomeCard(),
                  const TeacherResourceCard(),
                  const MockExamCreatorCard(),
              ],)
        ],
      ),
    );
  }
}
