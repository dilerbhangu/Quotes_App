import 'package:equatable/equatable.dart';

class QuoteCategory extends Equatable {
  final String id;
  final String title;
  final String coverImageUrl;

  const QuoteCategory({
    required this.id,
    required this.title,
    required this.coverImageUrl,
  });

  @override
  List<Object?> get props => [id, title, coverImageUrl];
}
