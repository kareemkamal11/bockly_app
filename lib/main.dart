import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/views/view_model/featured_books_cubit/featuredbooks_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/view_model/newes_book_cubit/newes_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
      BlocProvider<NewesBookListCubit>(
        create: (context) => NewesBookListCubit(
        getIt.get<HomeRepoImpl>(),
        )..fetchNewesBooks(),
      ),
      BlocProvider<FeaturedbooksCubit>(
        create: (context) => FeaturedbooksCubit(
        getIt.get<HomeRepoImpl>(),
        )..fetchFeaturedBooks(),
      ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Constants.kPrimaryColor,
          textTheme: GoogleFonts.interTextTheme(ThemeData.dark().textTheme),
        ),
        debugShowCheckedModeBanner: false,
        title: 'Bookly',
      ),
    );
  }
}
