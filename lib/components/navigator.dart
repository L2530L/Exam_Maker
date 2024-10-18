import 'package:exam_ai/page/secondHome.dart';
import 'package:flutter/material.dart';

FilledButton navigator(BuildContext context) {
    return FilledButton(
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.purple)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SecondHome(),
                ),
              );
            },
            child: const Text('Create an Exam or Quiz'));
  }