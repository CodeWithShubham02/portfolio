import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/image/photo.png'), // Add your photo
            ),
            const SizedBox(height: 20),
            const Text(
              'Hi, I\'m Shubham Gupta 👋',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Flutter Developer | API Integrator | Mobile Engineer',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.download),
              label: const Text('Download Resume'),
              onPressed: () {
                // TODO: Add your resume download link
              },
            ),
          ],
        ),
      ),
    );
  }
}
