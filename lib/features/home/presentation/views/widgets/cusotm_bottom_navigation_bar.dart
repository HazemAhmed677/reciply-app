import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reciply/core/managers/switch_views_cubit/switch_views_cubit.dart';
import 'package:reciply/core/utils/app_colors.dart';

class CusotmBottomNavigationBar extends StatefulWidget {
  const CusotmBottomNavigationBar({
    super.key,
    this.onTap,
  });
  final Function(int)? onTap;
  @override
  State<CusotmBottomNavigationBar> createState() =>
      _CusotmBottomNavigationBarState();
}

class _CusotmBottomNavigationBarState extends State<CusotmBottomNavigationBar> {
  GlobalKey<CurvedNavigationBarState> bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SwitchViewsCubit, SwitchViewsState>(
      builder: (context, state) {
        return CurvedNavigationBar(
          color: const Color.fromARGB(255, 213, 100, 100),
          height: 66,
          key: bottomNavigationKey,
          index: (state is SwitchViewsHome)
              ? 0
              : (state is SwitchViewsSearch)
                  ? 1
                  : 2,
          items: [
            SizedBox(
              child: SvgPicture.asset(
                'assets/images/home.svg',
                height: 28,
                colorFilter: ColorFilter.mode(
                  (state is SwitchViewsHome) ? AppColors.e2Color : Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
            Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: (state is SwitchViewsSearch)
                  ? AppColors.e2Color
                  : Colors.white,
              size: 28,
            ),
            SvgPicture.asset(
              'assets/images/saved.svg',
              height: 28,
              colorFilter: ColorFilter.mode(
                (state is SwitchViewsSaved) ? AppColors.e2Color : Colors.white,
                BlendMode.srcIn,
              ),
            ),
          ],
          buttonBackgroundColor: AppColors.white,
          backgroundColor: Colors.transparent,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(
            milliseconds: 500,
          ),
          onTap: widget.onTap,
          letIndexChange: (index) => true,
        );
      },
    );
  }
}
