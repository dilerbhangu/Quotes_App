import 'package:equatable/equatable.dart';

class Quote extends Equatable {
  final String id;
  final String text;
  final String author;
  final String categoryId;
  final String backgroundImageUrl;

  const Quote({
    required this.id,
    required this.text,
    required this.author,
    required this.categoryId,
    required this.backgroundImageUrl,
  });

  @override
  List<Object?> get props => [id, text, author, categoryId, backgroundImageUrl];
}
