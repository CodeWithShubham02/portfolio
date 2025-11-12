import 'package:flutter/material.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Experience',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),

          // -------- Bizipac Experience --------
          const Text(
            '💼 Software Engineer | Bizipac Couriers Pvt. Ltd. | Mumbai (Jul 2025 – Present)',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          const Text(
            'Worked on ERP and Food Delivery applications using Flutter. '
                'Developed the Peak Me App — a smart appointment scheduling and document management system '
                'for loan and credit card consultancy services (ICICI, Kotak Mahindra, Airport Services). '
                'Integrated secure document upload, identity verification, and automated reminders to enhance onboarding '
                'and improve client engagement.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, height: 1.6),
          ),
          const SizedBox(height: 10),
          const Text(
            '🏆 Best App Award 2025 – Bizipac Couriers Pvt. Ltd. '
                'Recognized for building a feature-rich mobile application with excellent design and user experience.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),

          const SizedBox(height: 30),

          // -------- SGTech Experience --------
          const Text(
            '💼 Software Engineer | SGTech Technology Pvt. Ltd. | Noida (Feb 2024 – Apr 2025)',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          const Text(
            'Worked on E-Commerce, ERP, and Food Delivery applications using Flutter. '
                'Developed multi-vendor marketplace apps, delivery management systems, and chat-based e-commerce solutions. '
                'Integrated social login, payment gateways, wallet systems, and Firebase-based push notifications. '
                'Handled end-to-end development and client demos with scalable app architecture.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, height: 1.6),
          ),
          const SizedBox(height: 10),
          const Text(
            'Key Features: Social Login · Payment Gateways · Push Notifications · Firebase Chat · '
                'Reward Points · Wallet · Shipping Management',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),

          const SizedBox(height: 30),

          // -------- Internship / Training --------
          const Text(
            '💼 Full Stack Web Development Intern | Techpile Technology | Lucknow (Summer 2022)',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          const Text(
            'Completed a 45-day Full Stack Web Development training focused on building scalable Flutter-based '
                'applications integrated with Firebase and Razorpay. '
                'Learned REST API integration, authentication, state management, and push notifications in Flutter.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, height: 1.6),
          ),
        ],
      ),
    );
  }
}
