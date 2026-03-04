import 'package:flutter_bloc/flutter_bloc.dart';
import 'quotes_event.dart';
import 'quotes_state.dart';
import '../repository/quotes_repository.dart';

class QuotesBloc extends Bloc<QuotesEvent, QuotesState> {
  final QuotesRepository repository;

  QuotesBloc({required this.repository}) : super(QuotesInitial()) {
    on<LoadQuotes>((event, emit) async {
      emit(QuotesLoading());
      try {
        final categories = await repository.fetchCategories();
        final quotes = await repository.fetchQuotes();
        emit(QuotesLoaded(categories: categories, quotes: quotes));
      } catch (e) {
        emit(QuotesError(e.toString()));
      }
    });
  }
}
