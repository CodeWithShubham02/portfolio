import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  // Function to open project link
  void _openLink(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final projects = [
      {
        'title': 'Peak Me App',
        'desc':
        'A smart appointment scheduling and document management app for loan and credit card consultancy services. '
            'Integrated secure document upload, identity verification, and automated reminders. '
            'Used by clients like ICICI, Kotak Mahindra, and Airport Services.',
        'tech': 'Flutter + Firebase + REST APIs',
        'link': 'https://github.com/CodeWithShubham02/peckme-new',
      },
      {
        'title': 'E-Commerce App',
        'desc':
        'A multi-vendor e-commerce app featuring cart, checkout, wallet, reward system, and Razorpay integration. '
            'Implemented push notifications, social login, and real-time chat with Firebase.',
        'tech': 'Flutter + Firebase + Razorpay + REST APIs',
        'link': 'https://github.com/Guptashubham789', // replace with exact link if available
      },
      {
        'title': 'Flutter Food App',
        'desc':
        'Cross-platform food ordering app with real-time order tracking and Firebase authentication. '
            'Added payment gateways (UPI/Cards/Wallets) and optimized REST API integration, reducing crash rate by 30%.',
        'tech': 'Flutter + Firebase Realtime Database + Razorpay',
        'link': 'https://github.com/Guptashubham789', // replace with exact link if available
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(24),
      itemCount: projects.length,
      itemBuilder: (context, index) {
        final project = projects[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  project['title']!,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  project['desc']!,
                  style: const TextStyle(fontSize: 15, height: 1.5),
                ),
                const SizedBox(height: 8),
                Text(
                  'Tech Stack: ${project['tech']}',
                  style: const TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 12),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.open_in_new),
                    label: const Text('View Project'),
                    onPressed: () => _openLink(project['link']!),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
