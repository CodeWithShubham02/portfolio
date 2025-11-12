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
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Text(
              "Hi, I’m Shubham Gupta 👋\n\n"
                  "I’m a passionate Software Developer at SGTech Technology Pvt. Ltd., "
                  "specializing in building high-performance and user-focused mobile applications. "
                  "With over 1.5 years of experience in Flutter and Dart, I develop seamless cross-platform apps "
                  "for Android, iOS, and Web.\n\n"
                  "Throughout my career, I’ve worked on diverse projects including e-commerce platforms, "
                  "delivery applications, smartwatch apps, and AI-powered chatbots for personalized shopping experiences. "
                  "I enjoy solving complex problems through clean, scalable code and creating smooth, visually engaging UIs.\n\n"
                  "I’m deeply interested in mobile app architecture, performance optimization, and API integration — "
                  "combining creativity with engineering discipline to deliver reliable digital experiences.\n\n"
                  "🛠️ Technical Skills\n\n"
                  "• Languages: Dart, Java, Swift, Kotlin, PHP, JavaScript\n"
                  "• Frameworks & Tools: Flutter, Firebase, GetX, Provider, Riverpod, RESTful APIs, JSON, Git\n"
                  "• Platforms: Android, iOS, Web\n"
                  "• Database: SQLite, MySQL, Firebase Firestore\n"
                  "• Others: Push Notifications, Google Maps, Payment Gateway Integration, AI Chatbot Integration",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15,
                height: 1.6,
                fontFamily: 'Poppins',
              ),
            ),
          ),

          SizedBox(height: 40),
        ],
      ),
    );
  }
}
