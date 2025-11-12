import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = [
      {'title': 'Bizipac Lead Manager', 'desc': 'Lead transfer & API integration system', 'tech': 'Flutter + PHP'},
      {'title': 'Billing App', 'desc': 'Invoice generation with Firebase hosting', 'tech': 'Flutter + Firebase'},
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(24),
      itemCount: projects.length,
      itemBuilder: (context, index) {
        final project = projects[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            title: Text(project['title']!),
            subtitle: Text('${project['desc']} \nTech: ${project['tech']}'),
            isThreeLine: true,
            trailing: const Icon(Icons.open_in_new),
            onTap: () {
              // TODO: add project link
            },
          ),
        );
      },
    );
  }
}
