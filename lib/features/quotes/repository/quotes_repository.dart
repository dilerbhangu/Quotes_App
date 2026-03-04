import '../models/quote.dart';
import '../models/category.dart';

class QuotesRepository {
  // Mock data simulation of Firestore collections
  Future<List<QuoteCategory>> fetchCategories() async {
    await Future.delayed(const Duration(milliseconds: 500)); // Simulate network latency
    return const [
      QuoteCategory(id: 'c1', title: 'Amazing Status', coverImageUrl: 'bg_sunset_ocean.png'),
      QuoteCategory(id: 'c2', title: 'Attitude Status', coverImageUrl: 'bg_dark_texture.png'),
      QuoteCategory(id: 'c3', title: 'Funny Status', coverImageUrl: 'bg_ocean_waves.png'),
      QuoteCategory(id: 'c4', title: 'Motivational', coverImageUrl: 'bg_forest_rays.png'),
    ];
  }

  Future<List<Quote>> fetchQuotes() async {
    await Future.delayed(const Duration(milliseconds: 800)); // Simulate network latency
    return const [
      Quote(
        id: 'q1',
        text: 'Do not regret growing older, it is a privilege denied to many.',
        author: 'Unknown',
        categoryId: 'c1',
        backgroundImageUrl: 'bg_mountains_mist.png',
      ),
      Quote(
        id: 'q2',
        text: 'Sometimes it is better to be alone because it gives you some time to be who you are.',
        author: 'Unknown',
        categoryId: 'c2',
        backgroundImageUrl: 'bg_dark_texture.png',
      ),
      Quote(
        id: 'q3',
        text: 'As we grow up, we realize it becomes less important to have a ton of friends.',
        author: 'Unknown',
        categoryId: 'c1',
        backgroundImageUrl: 'bg_ocean_waves.png',
      ),
    ];
  }
}
