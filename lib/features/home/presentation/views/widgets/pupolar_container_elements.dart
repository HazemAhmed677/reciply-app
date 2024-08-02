import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/core/utils/app_styles.dart';

class PupolarContainerElements extends StatefulWidget {
  const PupolarContainerElements({
    super.key,
  });

  @override
  State<PupolarContainerElements> createState() =>
      _PupolarContainerElementsState();
}

class _PupolarContainerElementsState extends State<PupolarContainerElements> {
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 66,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            'Pepper sweetcorn ramen',
            textAlign: TextAlign.center,
            style: AppStyles.semiBold14(context),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 12,
            bottom: 4,
          ),
          child: Text(
            'Time',
            style: AppStyles.regular14(context).copyWith(
              color: AppColors.c1Color,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 12.0,
            bottom: 12,
            right: 12,
          ),
          child: Row(
            children: [
              Text(
                '10 Mins',
                style: AppStyles.semiBold12(context).copyWith(
                  color: AppColors.n30Color,
                ),
              ),
              const Spacer(),
              CircleAvatar(
                radius: 14,
                backgroundColor: AppColors.white,
                child: InkWell(
                  onTap: () {
                    flag = !flag;
                    setState(() {});
                  },
                  child: Icon(
                    (!flag)
                        ? FontAwesomeIcons.bookmark
                        : FontAwesomeIcons.solidBookmark,
                    color: Colors.black,
                    size: 14,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
