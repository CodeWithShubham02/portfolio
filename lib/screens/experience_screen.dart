import 'package:flutter/material.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final experiences = [
      {'role': 'Flutter Developer', 'company': 'Bizipac Pvt Ltd', 'year': '2023 - Present'},
      {'role': 'Intern', 'company': 'TechLabs', 'year': '2022 - 2023'},
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(24),
      itemCount: experiences.length,
      itemBuilder: (context, index) {
        final exp = experiences[index];
        return ListTile(
          leading: const Icon(Icons.work_outline),
          title: Text(exp['role']!),
          subtitle: Text('${exp['company']} • ${exp['year']}'),
        );
      },
    );
  }
}
