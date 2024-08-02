import 'package:flutter/material.dart';
import 'package:reciply/features/home/presentation/views/widgets/cusotm_bottom_navigation_bar.dart';
import 'package:reciply/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:reciply/features/saved/presentation/views/saved_view.dart';
import 'package:reciply/features/search/presnetation/views/search_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Widget> screens = const [
    HomeViewBody(),
    SearchView(),
    SavedView(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ));
  }
}
