import 'package:flutter/material.dart';

class ExplorerScreen extends StatelessWidget {
  const ExplorerScreen({super.key});

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
            icon: const Icon(Icons.favorite, color: Colors.redAccent),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildSection(context, 'Wisdom Quotes', ['bg_mountain_mist.png', 'bg_forest_rays.png', 'bg_desert_dunes.png']),
            const SizedBox(height: 24),
            _buildSection(context, 'Best Quotes', ['bg_cloud_pastel.png', 'bg_ocean_waves.png', 'bg_dark_texture.png']),
            const SizedBox(height: 24),
            _buildSection(context, 'Quotes by Category', ['bg_neon_city.png', 'bg_sunset_ocean.png']),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, List<String> images) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontSize: 20,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'See All >',
                style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 260,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Container(
                width: 160,
                margin: const EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/bg_mountains_mist.png'), // placeholder
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                    ),
                  ),
                  padding: const EdgeInsets.all(12),
                  alignment: Alignment.bottomLeft,
                  child: const Text(
                    'Placeholder Quote text goes here.',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
