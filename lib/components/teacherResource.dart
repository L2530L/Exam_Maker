import 'package:flutter/material.dart';

class TeacherResourceCard extends StatelessWidget {
  const TeacherResourceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 200,
        height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.withOpacity(0.2)),
      ),
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
      ),
    );
  }
}