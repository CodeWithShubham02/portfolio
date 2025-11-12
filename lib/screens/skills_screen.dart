import 'package:flutter/material.dart';

class SkillsScreen extends StatefulWidget {
  const SkillsScreen({super.key});

  @override
  State<SkillsScreen> createState() => _SkillsScreenState();
}

class _SkillsScreenState extends State<SkillsScreen> {
  final skills = [
    'Flutter',
    'Dart',
    'Java',
    'C',
    'HTML',
    'CSS',
    'Firebase',
    'RESTful APIs',
    'GraphQL',
    'Riverpod',
    'Provider',
    'GetX',
    'SQLite',
    'Hive',
    'GetStorage',
    'SharedPreferences',
    'Android Studio',
    'Xcode',
    'GitHub',
    'Push Notifications',
    'Deep Linking',
    'Google Maps',
    'Payment Gateway Integration',
    'Firebase Chat',
  ];

  int? hoveredIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Text(
              'Technical Skills',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                itemCount: skills.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // auto adjust later for web/mobile
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 3,
                ),
                itemBuilder: (context, index) {
                  final isHovered = hoveredIndex == index;
                  return MouseRegion(
                    onEnter: (_) => setState(() => hoveredIndex = index),
                    onExit: (_) => setState(() => hoveredIndex = null),
                    child: GestureDetector(
                      onTapDown: (_) => setState(() => hoveredIndex = index),
                      onTapCancel: () => setState(() => hoveredIndex = null),
                      onTapUp: (_) => setState(() => hoveredIndex = null),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        transform: isHovered
                            ? (Matrix4.identity()..scale(1.05))
                            : Matrix4.identity(),
                        decoration: BoxDecoration(
                          color: isHovered ? Colors.blueAccent : Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 6,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            skills[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: isHovered ? Colors.white : Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
