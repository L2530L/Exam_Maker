import 'package:flutter/material.dart';

class TeacherResourceCard extends StatelessWidget {
  const TeacherResourceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Teacher Resources', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () {},
              child: const Text('English'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Math'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Science'),
            ),
          ],
        ),
      ),
    );
  }
}