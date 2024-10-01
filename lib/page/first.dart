import 'package:exam_ai/page/home.dart';
import 'package:flutter/material.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'MOCKexam',
                style: TextStyle(
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 25,
            ),
            Text('Resources',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.black,
                ))
          ],
        ),
        TextButton(
            onPressed: (){
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Home(),));
            },
            child: Text('data'))
      ],
    );
  }
}
