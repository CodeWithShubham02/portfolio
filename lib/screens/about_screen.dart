import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          const Text(
            'About Me',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "I'm a passionate Flutter Developer with 1.5+ years of experience building high-performance, "
                  "cross-platform mobile applications. I specialize in Firebase integration, REST APIs, "
                  "state management, and creating user-friendly UIs for scalable apps like E-Commerce, ERP, and Food Delivery.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, height: 1.5),
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
