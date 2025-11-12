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
          const Text(
            'Get in Touch',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            '📧 sg731159@gmail.com | 📱 +91 63935 39704',
            style: TextStyle(fontSize: 15),
          ),
          const SizedBox(height: 5),
          const Text(
            '🌐 LinkedIn: linkedin.com/in/shubham-gupta-a641b2223/',
            style: TextStyle(fontSize: 15),
          ),
          const Text(
            '💻 GitHub: github.com/Guptashubham789',
            style: TextStyle(fontSize: 15),
          ),
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
