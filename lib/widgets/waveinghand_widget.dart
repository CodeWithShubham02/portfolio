import 'package:flutter/material.dart';

class WavingHand extends StatefulWidget {
  const WavingHand({super.key});

  @override
  State<WavingHand> createState() => _WavingHandState();
}

class _WavingHandState extends State<WavingHand>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    )..repeat(reverse: true); // 👈 keep waving
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      child: const Text(
        "👋",
        style: TextStyle(fontSize: 28),
      ),
      builder: (context, child) {
        return Transform.rotate(
          angle: 0.3 * _controller.value - 0.15, // small waving angle
          child: child,
        );
      },
    );
  }
}
