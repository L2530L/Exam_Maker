import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Home', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () {},
              child: const Text('Homepage'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('About'),
            ),
          ],
        ),
      ),
    );
  }
}