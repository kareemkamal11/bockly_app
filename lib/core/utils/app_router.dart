import 'package:go_router/go_router.dart';

import '../../features/book_details/presentation/views/book_details_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/search/presentation/views/search_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeViewRoute = '/homeView';

  static const kBookDetailsViewRoute = '/bookDetailsView';

  static const kSearchViewRoute = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeViewRoute,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsViewRoute,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kSearchViewRoute,
        builder: (context, state) => const SearchView(),
      )
    ],
  );
}
