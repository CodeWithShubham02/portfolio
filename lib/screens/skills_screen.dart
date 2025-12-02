import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    'HTML',
    'CSS',
    'Firebase',
    'RESTful APIs',
    'Riverpod',
    'Provider',
    'GetX',
    'SQLite',
    'Hive',
    'GetStorage',
    'SharedPreferences',
    'Android Studio',
    'GitHub',
    'Push Notifications',
    'Google Maps',
    'Payment Gateway',
    'Firebase DB',
  ];

  int? hoveredIndex;

  // Optionally: simple map of icons for top skills
  IconData _getSkillIcon(String skill) {
    switch (skill.toLowerCase()) {
      case 'flutter':
        return Icons.flutter_dash;
      case 'dart':
        return Icons.code;
      case 'java':
        return Icons.coffee;
      case 'firebase':
        return Icons.cloud;
      case 'github':
        return Icons.folder_shared;
      case 'google maps':
        return Icons.map;
      default:
        return Icons.bolt;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Gradient background for a premium feel
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffe0f7fa), Color(0xfff1f8e9)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Technical Skills',
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal[700],
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Here are some technologies and tools I use to build apps 👇",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 30),

              // Responsive Grid
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    int crossAxisCount = 2;
                    if (constraints.maxWidth > 900) {
                      crossAxisCount = 4;
                    } else if (constraints.maxWidth > 600) {
                      crossAxisCount = 3;
                    }
                    return GridView.builder(
                      itemCount: skills.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                        childAspectRatio: 3,
                      ),
                      itemBuilder: (context, index) {
                        final isHovered = hoveredIndex == index;
                        return MouseRegion(
                          onEnter: (_) => setState(() => hoveredIndex = index),
                          onExit: (_) => setState(() => hoveredIndex = null),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            transform: isHovered
                                ? (Matrix4.identity()..scale(1.01))
                                : Matrix4.identity(),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: [
                                if (isHovered)
                                  BoxShadow(
                                    color:
                                    Colors.tealAccent.withOpacity(0.4),
                                    blurRadius: 16,
                                    spreadRadius: 2,
                                  ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: isHovered
                                        ? Colors.teal.withOpacity(0.8)
                                        : Colors.white.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(18),
                                    border: Border.all(
                                      color: Colors.teal.withOpacity(0.3),
                                      width: 1.5,
                                    ),
                                  ),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          _getSkillIcon(skills[index]),
                                          color: isHovered
                                              ? Colors.white
                                              : Colors.teal[700],
                                        ),
                                        const SizedBox(width: 10),
                                        Text(
                                          skills[index],
                                          style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: isHovered
                                                ? Colors.white
                                                : Colors.black87,
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
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
