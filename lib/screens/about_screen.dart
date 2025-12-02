import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    )..forward();

    _fadeAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: Center(
            child: Card(
              elevation: 8,
              shadowColor: Colors.tealAccent.withOpacity(0.3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'About Me',
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "Hi, I’m Shubham Gupta 👋",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "I’m a passionate Software Developer at SGTech Technology Pvt. Ltd., "
                          "specializing in building high-performance and user-focused mobile applications. "
                          "With over 1.5 years of experience in Flutter and Dart, I develop seamless cross-platform apps "
                          "for Android, iOS, and Web.\n\n"
                          "Throughout my career, I’ve worked on diverse projects including e-commerce platforms, "
                          "delivery applications, smartwatch apps, and AI-powered chatbots for personalized shopping experiences. "
                          "I enjoy solving complex problems through clean, scalable code and creating smooth, visually engaging UIs.\n\n"
                          "I’m deeply interested in mobile app architecture, performance optimization, and API integration — "
                          "combining creativity with engineering discipline to deliver reliable digital experiences.",
                      style: TextStyle(
                        fontSize: 15,
                        height: 1.6,
                        fontFamily: 'Poppins',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    Text(
                      '🛠️ Technical Skills',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Divider(thickness: 1.2),
                    const SizedBox(height: 10),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "• Languages: Dart, Java, Swift, Kotlin, PHP, JavaScript\n"
                            "• Frameworks & Tools: Flutter, Firebase, GetX, Provider, Riverpod, RESTful APIs, JSON, Git\n"
                            "• Platforms: Android, iOS, Web\n"
                            "• Database: SQLite, MySQL, Firebase Firestore\n"
                            "• Others: Push Notifications, Google Maps, Payment Gateway Integration, AI Chatbot Integration",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15,
                          height: 1.6,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
