import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reciply/core/utils/app_colors.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/home/presentation/views/widgets/pupular_category_card.dart';

class ItemInfoMiddleSection extends StatefulWidget {
  const ItemInfoMiddleSection({super.key});

  @override
  State<ItemInfoMiddleSection> createState() => _ItemInfoMiddleSectionState();
}

class _ItemInfoMiddleSectionState extends State<ItemInfoMiddleSection> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Icon(
              Icons.star,
              color: Color(0xffFFB661),
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              '4.5',
              style: AppStyles.semiBold14(context).copyWith(
                color: AppColors.n30Color,
              ),
            ),
            const SizedBox(
              width: 7,
            ),
            Text(
              '(300 Reviews)',
              style: AppStyles.regular14(context).copyWith(
                color: AppColors.a9Color,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  currentIndex = 0;
                  setState(() {});
                },
                child: PupularCategoryCard(
                  isActive: currentIndex == 0,
                  text: 'Ingredients',
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  currentIndex = 1;
                  setState(() {});
                },
                child: PupularCategoryCard(
                  isActive: currentIndex == 1,
                  text: 'Procedure',
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 22,
        ),
        Row(
          children: [
            SvgPicture.asset(
              'assets/images/serve.svg',
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              '1 serve',
              style: AppStyles.regular12(context).copyWith(
                color: AppColors.a9Color,
              ),
            )
          ],
        ),
      ],
    );
  }
}
