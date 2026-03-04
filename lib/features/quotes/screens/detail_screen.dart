import 'package:flutter/material.dart';
import '../../../core/widgets/glass_container.dart';
import '../../../core/theme/app_colors.dart';

class QuoteDetailScreen extends StatelessWidget {
  const QuoteDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Alone Status', style: TextStyle(color: Colors.white)),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'assets/images/bg_mountains_mist.png',
            fit: BoxFit.cover,
          ),
          // Gradient Overlay
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.4),
                  Colors.transparent,
                  Colors.black.withOpacity(0.4),
                ],
              ),
            ),
          ),
          // Quote Text
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Center(
              child: Text(
                'Diler it is better to be alone because it gives you some time to be who you are.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  height: 1.3,
                ),
              ),
            ),
          ),
          // Bottom Actions
          Positioned(
            left: 16,
            right: 16,
            bottom: 32,
            child: GlassContainer(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              blurX: 20,
              blurY: 20,
              opacity: 0.15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _ActionItem(icon: Icons.color_lens, label: 'Bg', color: Colors.green),
                  _ActionItem(icon: Icons.copy, label: 'Copy', color: Colors.blue),
                  _ActionItem(icon: Icons.share, label: 'Share', color: Colors.red),
                  _ActionItem(icon: Icons.download, label: 'Save', color: Colors.green),
                  _ActionItem(icon: Icons.star_border, label: 'Bookmark', color: Colors.blue),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ActionItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const _ActionItem({required this.icon, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color, size: 28),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            color: AppColors.textPrimary,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
