import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  int? hoveredIndex;

  // Function to open project link
  void _openLink(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  IconData _getProjectIcon(String title) {
    if (title.toLowerCase().contains('e-commerce')) return Icons.shopping_cart;
    if (title.toLowerCase().contains('food')) return Icons.fastfood;
    if (title.toLowerCase().contains('peak')) return Icons.credit_card;
    return Icons.apps;
  }

  @override
  Widget build(BuildContext context) {
    final projects = [
      {
        'title': 'Peak Me App',
        'desc':
        'A smart appointment scheduling and document management app for loan and credit card consultancy services. Integrated secure document upload, identity verification, and automated reminders. Used by clients like ICICI, Kotak Mahindra, and Airport Services.',
        'tech': 'Flutter • Firebase • REST APIs',
        'link': 'https://github.com/CodeWithShubham02/peckme-new',
      },
      {
        'title': 'E-Commerce App',
        'desc':
        'A multi-vendor e-commerce app featuring cart, checkout, wallet, reward system, and Razorpay integration. Implemented push notifications, social login, and real-time chat with Firebase.',
        'tech': 'Flutter • Firebase • Razorpay • REST APIs',
        'link': 'https://github.com/Guptashubham789',
      },
      {
        'title': 'Flutter Food App',
        'desc':
        'Cross-platform food ordering app with real-time order tracking and Firebase authentication. Added payment gateways (UPI/Cards/Wallets) and optimized REST API integration, reducing crash rate by 30%.',
        'tech': 'Flutter • Firebase Realtime DB • Razorpay',
        'link': 'https://github.com/Guptashubham789',
      },
    ];

    return Scaffold(
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
                'My Projects',
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal[700],
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Some of my featured projects that I’ve built and deployed 👇',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 30),
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    int crossAxisCount = 1;
                    if (constraints.maxWidth > 900) {
                      crossAxisCount = 3;
                    } else if (constraints.maxWidth > 600) {
                      crossAxisCount = 2;
                    }
                    return GridView.builder(
                      itemCount: projects.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        childAspectRatio: 0.9,
                      ),
                      itemBuilder: (context, index) {
                        final project = projects[index];
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
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                if (isHovered)
                                  BoxShadow(
                                    color:
                                    Colors.tealAccent.withOpacity(0.4),
                                    blurRadius: 20,
                                    spreadRadius: 2,
                                  ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                                child: Container(
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: isHovered
                                        ? Colors.teal.withOpacity(0.85)
                                        : Colors.white.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: Colors.teal.withOpacity(0.3),
                                      width: 1.5,
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        _getProjectIcon(project['title']!),
                                        size: 45,
                                        color: isHovered
                                            ? Colors.white
                                            : Colors.teal[600],
                                      ),
                                      const SizedBox(height: 12),
                                      Text(
                                        project['title']!,
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: isHovered
                                              ? Colors.white
                                              : Colors.black87,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Expanded(
                                        child: Text(
                                          project['desc']!,
                                          style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            height: 1.6,
                                            color: isHovered
                                                ? Colors.white70
                                                : Colors.black87,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        project['tech']!,
                                        style: GoogleFonts.poppins(
                                          fontStyle: FontStyle.italic,
                                          fontSize: 13,
                                          color: isHovered
                                              ? Colors.white70
                                              : Colors.teal[700],
                                        ),
                                      ),
                                      const SizedBox(height: 16),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: AnimatedContainer(
                                          duration:
                                          const Duration(milliseconds: 200),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            boxShadow: [
                                              if (isHovered)
                                                BoxShadow(
                                                  color: Colors.white
                                                      .withOpacity(0.6),
                                                  blurRadius: 10,
                                                  spreadRadius: 1,
                                                ),
                                            ],
                                          ),
                                          child: ElevatedButton.icon(
                                            icon: const Icon(Icons.open_in_new),
                                            label:
                                            const Text('View Project'),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: isHovered
                                                  ? Colors.white
                                                  : Colors.teal,
                                              foregroundColor: isHovered
                                                  ? Colors.teal
                                                  : Colors.white,
                                            ),
                                            onPressed: () => _openLink(
                                                project['link']!),
                                          ),
                                        ),
                                      ),
                                    ],
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
