import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reciply/core/utils/service_locator.dart';
import 'package:reciply/features/home/data/repos/home_repo_implement.dart';
import 'package:reciply/features/home/presentation/views/widgets/cusotm_bottom_navigation_bar.dart';
import 'package:reciply/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:reciply/features/saved/presentation/views/saved_view.dart';
import 'package:reciply/features/search/presnetation/manager/fetch_recent_search_cubit/fetch_recent_serch_meals_cubit.dart';
import 'package:reciply/features/search/presnetation/views/search_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

int currentIndex = 1;

class _HomeViewState extends State<HomeView> {
  List<Widget> screens = [
    const HomeViewBody(),
    BlocProvider(
      create: (context) => FetchRecentSerchMealsCubit(
          homeRepoImplement: getIt.get<HomeRepoImplement>())
        ..fetchRecentSearchMeals(),
      child: const SearchView(),
    ),
    const SavedView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: AnimatedSwitcher(
        duration: const Duration(
          milliseconds: 600,
        ),
        child: screens[currentIndex],
      ),
      bottomNavigationBar: CusotmBottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
      ),
    );
  }
}
