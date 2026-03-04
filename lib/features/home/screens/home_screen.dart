import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/widgets/glass_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Status & Quotes'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined, color: Colors.amber),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.favorite, color: AppColors.accent),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFeaturedCarousel(),
              const SizedBox(height: 24),
              _buildQuickLinks(),
              const SizedBox(height: 32),
              Text(
                'Most Popular',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 16),
              _buildPopularGrid(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeaturedCarousel() {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
          image: AssetImage('assets/images/bg_mountains_mist.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.black.withOpacity(0.4),
        ),
        padding: const EdgeInsets.all(24.0),
        alignment: Alignment.center,
        child: const Text(
          'Do not regret growing older, it is a privilege denied to many.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _buildQuickLinks() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _QuickLinkItem(icon: Icons.grid_view, label: 'Categories', color: Color(0xFF9E5C8D)),
        _QuickLinkItem(icon: Icons.image_outlined, label: 'Quotes', color: Color(0xFFC79A42)),
        _QuickLinkItem(icon: Icons.local_florist_outlined, label: 'Latest', color: Color(0xFF7A86C0)),
        _QuickLinkItem(icon: Icons.menu_book_outlined, label: 'Articles', color: Color(0xFF769C76)),
      ],
    );
  }

  Widget _buildPopularGrid() {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      childAspectRatio: 1.2,
      children: [
        _PopularCategoryCard(title: 'Amazing Status', image: 'bg_sunset_ocean.png'),
        _PopularCategoryCard(title: 'Attitude Status', image: 'bg_dark_texture.png'),
        _PopularCategoryCard(title: 'Funny Status', image: 'bg_ocean_waves.png'),
        _PopularCategoryCard(title: 'Motivational Status', image: 'bg_forest_rays.png'),
      ],
    );
  }
}

class _QuickLinkItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const _QuickLinkItem({required this.icon, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(icon, color: Colors.white, size: 28),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w500,
            color: AppColors.textPrimary,
          ),
        ),
      ],
    );
  }
}

class _PopularCategoryCard extends StatelessWidget {
  final String title;
  final String image;

  const _PopularCategoryCard({required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          // Action for card tap
        },
        borderRadius: BorderRadius.circular(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage('assets/images/$image'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
