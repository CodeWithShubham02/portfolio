import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Get in Touch', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          const Text('Email: shubham@example.com'),
          const SizedBox(height: 6),
          const Text('LinkedIn: linkedin.com/in/shubhamgupta'),
          const SizedBox(height: 6),
          const Text('GitHub: github.com/shubhamgupta'),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            icon: const Icon(Icons.mail),
            label: const Text('Send Message'),
            onPressed: () {
              // TODO: integrate contact form or EmailJS
            },
          )
        ],
      ),
    );
  }
}
