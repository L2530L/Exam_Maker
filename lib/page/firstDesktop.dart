import 'package:exam_ai/components/homeCard.dart';
import 'package:exam_ai/components/mockExamCreator.dart';
import 'package:exam_ai/components/teacherResource.dart';
import 'package:exam_ai/page/second.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class FirstDesktop extends StatelessWidget {
  const FirstDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: appBar(),toolbarHeight: 100,),
      body: Column(
        children: [
          FilledButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.purple)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                );
              },
              child: const Text('Create an Exam or Quiz')),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const HomeCard(),
              const TeacherResourceCard(),
              const MockExamCreatorCard(),
            ],
          )
        ],
      ),
    );
  }

  Row appBar() {
    return const Row(
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
        );
  }
}
