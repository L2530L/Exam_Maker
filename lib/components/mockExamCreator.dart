import 'package:flutter/material.dart';

class MockExamCreatorCard extends StatelessWidget {
  const MockExamCreatorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Mock Exam Creator', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () {},
              child: const Text('Details'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Subject'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Exam Options'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Exam Type'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Draft'),
            ),
          ],
        ),
      ),
    );
  }
}