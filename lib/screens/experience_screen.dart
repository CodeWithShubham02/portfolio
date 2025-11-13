import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExperienceScreen extends StatefulWidget {
  const ExperienceScreen({super.key});

  @override
  State<ExperienceScreen> createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {
  int? hoveredIndex;

  final List<Map<String, dynamic>> experiences = [
    {
      'company': 'Bizipac Couriers Pvt. Ltd.',
      'role': 'Software Engineer',
      'duration': 'Jul 2025 – Present · Mumbai',
      'desc':
      'Developed the Peak Me App — a smart appointment scheduling and document management system for loan and credit card consultancy services (ICICI, Kotak Mahindra, Airport Services). Integrated secure document upload, identity verification, and automated reminders.',
      'achievement':
      '🏆 Best App Award 2025 – Recognized for building a feature-rich mobile application with excellent user experience.',
      'icon': Icons.business_center,
      'color': Colors.blueAccent,
    },
    {
      'company': 'SGTech Technology Pvt. Ltd.',
      'role': 'Software Engineer',
      'duration': 'Feb 2024 – Apr 2025 · Noida',
      'desc':
      'Worked on E-Commerce, ERP, and Food Delivery applications using Flutter. Developed multi-vendor marketplace apps, delivery management systems, and chat-based e-commerce solutions. Integrated social login, payment gateways, wallet systems, and push notifications.',
      'achievement':
      '⭐ Key Features: Social Login · Payment Gateway · Push Notifications · Firebase Chat · Reward Points · Wallet · Shipping Management',
      'icon': Icons.laptop_mac,
      'color': Colors.deepPurpleAccent,
    },
    {
      'company': 'Techpile Technology Pvt. Ltd.',
      'role': 'Full Stack Web Development Intern',
      'duration': 'Summer 2022 · Lucknow',
      'desc':
      'Completed a 45-day Full Stack Web Development training focused on Flutter + Firebase app integration with Razorpay, authentication, REST APIs, and state management.',
      'achievement':
      '🎓 Successfully delivered multiple mini-projects and dashboards.',
      'icon': Icons.school,
      'color': Colors.green,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Experience',
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 20),
            Column(
              children: List.generate(experiences.length, (index) {
                final exp = experiences[index];
                final isHovered = hoveredIndex == index;

                return MouseRegion(
                  onEnter: (_) => setState(() => hoveredIndex = index),
                  onExit: (_) => setState(() => hoveredIndex = null),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    margin: const EdgeInsets.only(bottom: 20),
                    transform: isHovered
                        ? (Matrix4.identity()..scale(1.03))
                        : Matrix4.identity(),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: isHovered
                              ? Colors.blueAccent.withOpacity(0.3)
                              : Colors.black12,
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                      border: Border.all(
                        color: isHovered
                            ? (exp['color'] as Color)
                            : Colors.grey.shade300,
                        width: 1.2,
                      ),
                    ),
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundColor:
                          (exp['color'] as Color).withOpacity(0.15),
                          child: Icon(
                            exp['icon'] as IconData,
                            color: exp['color'] as Color,
                            size: 28,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                exp['role'] as String,
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                '${exp['company']} | ${exp['duration']}',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Colors.grey[700],
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                exp['desc'] as String,
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  height: 1.6,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                exp['achievement'] as String,
                                style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  color: Colors.blueGrey,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
