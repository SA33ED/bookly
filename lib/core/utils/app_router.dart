import 'package:bookly/core/services/service_locator.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: '/bookDetailsView',
        builder: (context, state) {
          return BlocProvider(
            create: (context) =>
                SimilarBooksCubit(getIt<HomeRepoImpelementaion>()),
            child:  BookDetailesView(book: state.extra as BookModel),
          );
        },
      ),
      GoRoute(
        path: '/searchView',
        builder: (context, state) {
          return const SearchView();
        },
      ),
    ],
  );
}
