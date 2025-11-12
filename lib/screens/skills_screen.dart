import 'package:flutter/material.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = ['Flutter', 'Dart', 'PHP', 'CodeIgniter', 'Firebase', 'REST API', 'MySQL'];
    return Padding(
      padding: const EdgeInsets.all(24),
      child: GridView.count(
        crossAxisCount: 2,
        children: skills.map((skill) {
          return Card(
            child: Center(
              child: Text(skill, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
          );
        }).toList(),
      ),
    );
  }
}
