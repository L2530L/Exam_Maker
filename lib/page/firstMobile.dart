import 'package:exam_ai/components/homeCard.dart';
import 'package:exam_ai/components/mockExamCreator.dart';
import 'package:exam_ai/components/teacherResource.dart';
import 'package:exam_ai/page/second.dart';
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
          color: Colors.orange[300],
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
        // Search bar
        Container(
          padding: EdgeInsets.all(16),
          color: Colors.grey[100],
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        ),
        // Main content
        Expanded(
          child: ListView(
            children: [
              ElevatedButton(
                child: Text('Create an Exam or Quiz'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      ));
                },
              ),

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
