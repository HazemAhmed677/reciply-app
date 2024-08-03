import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reciply/core/utils/app_colors.dart';

class CusotmBottomNavigationBar extends StatefulWidget {
  const CusotmBottomNavigationBar(
      {super.key, required this.currentIndex, this.onTap});
  final int currentIndex;
  final Function(int)? onTap;

  @override
  State<CusotmBottomNavigationBar> createState() =>
      _CusotmBottomNavigationBarState();
}

class _CusotmBottomNavigationBarState extends State<CusotmBottomNavigationBar> {
  GlobalKey<CurvedNavigationBarState> bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: AppColors.e2Color,
      height: 68,
      key: bottomNavigationKey,
      index: widget.currentIndex,
      items: [
        SvgPicture.asset(
          'assets/images/home.svg',
          colorFilter: ColorFilter.mode(
            (widget.currentIndex == 0) ? AppColors.e2Color : AppColors.white,
            BlendMode.srcIn,
          ),
        ),
        Icon(
          FontAwesomeIcons.magnifyingGlass,
          color:
              (widget.currentIndex == 1) ? AppColors.e2Color : AppColors.white,
          size: 22,
        ),
        SvgPicture.asset(
          'assets/images/saved.svg',
          colorFilter: ColorFilter.mode(
            (widget.currentIndex == 2) ? AppColors.e2Color : AppColors.white,
            BlendMode.srcIn,
          ),
        ),
      ],
      buttonBackgroundColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(
        milliseconds: 500,
      ),
      onTap: widget.onTap,
      letIndexChange: (index) => true,
    );
  }
}
