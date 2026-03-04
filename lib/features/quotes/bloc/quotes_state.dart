import 'package:equatable/equatable.dart';
import '../models/quote.dart';
import '../models/category.dart';

abstract class QuotesState extends Equatable {
  const QuotesState();
  
  @override
  List<Object> get props => [];
}

class QuotesInitial extends QuotesState {}

class QuotesLoading extends QuotesState {}

class QuotesLoaded extends QuotesState {
  final List<QuoteCategory> categories;
  final List<Quote> quotes;

  const QuotesLoaded({required this.categories, required this.quotes});

  @override
  List<Object> get props => [categories, quotes];
}

class QuotesError extends QuotesState {
  final String message;

  const QuotesError(this.message);

  @override
  List<Object> get props => [message];
}
