import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import '../widgets/waveinghand_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<void> downloadResume(BuildContext context) async {
    try {
      // 1️⃣ Storage permission
      var status = await Permission.storage.request();
      if (!status.isGranted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Storage permission denied')),
        );
        return;
      }

      // 2️⃣ Get the resume from assets
      final byteData = await rootBundle.load('assets/resume/Shubham-Gupta-Resume.pdf');

      // 3️⃣ Get downloads directory path
      final directory = Directory('/storage/emulated/0/Download');
      if (!await directory.exists()) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Download folder not found!')),
        );
        return;
      }

      // 4️⃣ Write the file
      final filePath = '${directory.path}/Shubham_Resume.pdf';
      final file = File(filePath);
      await file.writeAsBytes(byteData.buffer.asUint8List());

      // 5️⃣ Show success message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('✅ Resume downloaded to: $filePath')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('❌ Error: $e')),
      );
    }
  }

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
              backgroundImage: AssetImage('assets/image/photo.png'),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Hi, I'm Shubham Gupta ",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 6),
                WavingHand(), // 👈 custom animated widget
              ],
            )
,
            const SizedBox(height: 10),
            const Text(
              'Flutter Developer | API Integrator | Mobile Engineer',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.download),
              label: const Text('Download Resume'),
              onPressed: () => downloadResume(context),
            ),
          ],
        ),
      ),
    );
  }
}
