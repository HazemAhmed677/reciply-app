import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reciply/core/utils/app_colors.dart';

class CusotmBottomNavigationBar extends StatelessWidget {
  const CusotmBottomNavigationBar(
      {super.key, required this.currentIndex, this.onTap});
  final int currentIndex;
  final Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false, // Hide labels for selected items
      showUnselectedLabels: false,
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: AnimatedContainer(
            duration: const Duration(seconds: 1),
            child: SvgPicture.asset(
              'assets/images/home.svg',
              colorFilter: ColorFilter.mode(
                (currentIndex == 0) ? AppColors.e2Color : AppColors.c1Color,
                BlendMode.srcIn,
              ),
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: AnimatedContainer(
            duration: const Duration(seconds: 1),
            child: SvgPicture.asset(
              'assets/images/saved.svg',
              colorFilter: ColorFilter.mode(
                  (currentIndex == 1) ? AppColors.e2Color : AppColors.c1Color,
                  BlendMode.srcIn),
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: AnimatedContainer(
            duration: const Duration(seconds: 1),
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              color:
                  (currentIndex == 2) ? AppColors.e2Color : AppColors.c1Color,
              size: 22,
            ),
          ),
          label: '',
        ),
      ],
    );
  }
}
