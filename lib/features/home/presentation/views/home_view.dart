import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reciply/core/managers/switch_views_cubit/switch_views_cubit.dart';
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

int currentIndex = 0;

class _HomeViewState extends State<HomeView> {
  bool flag = true;
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
      body: BlocBuilder<SwitchViewsCubit, SwitchViewsState>(
        builder: (context, state) {
          return AnimatedSwitcher(
            duration: const Duration(
              milliseconds: 600,
            ),
            child: (state is SwitchViewsHome)
                ? screens[0]
                : (state is SwitchViewsSearch)
                    ? screens[1]
                    : screens[2],
          );
        },
      ),
      bottomNavigationBar: CusotmBottomNavigationBar(
        onTap: (index) async {
          BlocProvider.of<SwitchViewsCubit>(context)
              .emitViews(currentIndex: index);
        },
      ),
    );
  }
}
