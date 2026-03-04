import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/theme/app_theme.dart';
import 'features/navigation/main_navigation_screen.dart';
import 'features/quotes/bloc/quotes_bloc.dart';
import 'features/quotes/bloc/quotes_event.dart';
import 'features/quotes/repository/quotes_repository.dart';

void main() {
  runApp(const ZenQuotesApp());
}

class ZenQuotesApp extends StatelessWidget {
  const ZenQuotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<QuotesBloc>(
          create: (context) => QuotesBloc(repository: QuotesRepository())..add(LoadQuotes()),
        ),
      ],
      child: MaterialApp(
        title: 'ZenQuotes',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        home: const MainNavigationScreen(),
      ),
    );
  }
}

