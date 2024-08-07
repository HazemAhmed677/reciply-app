import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reciply/core/managers/switch_views_cubit/switch_views_cubit.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/home/presentation/views/widgets/custom_text_field.dart';
import 'package:reciply/features/search/presnetation/manager/fetch_searched_meals_cubit/fetch_searched_meals_cubit.dart';

class HomeTopSection extends StatefulWidget {
  const HomeTopSection({
    super.key,
  });

  @override
  State<HomeTopSection> createState() => _HomeTopSectionState();
}

class _HomeTopSectionState extends State<HomeTopSection> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
            ),
            child: Text(
              'Find best recipes\nfor cooking',
              style: AppStyles.semiBold24(context),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 8,
            ),
            child: CustomTextField(
              onSubmettied: (value) async {
                if (value != '') {
                  BlocProvider.of<SwitchViewsCubit>(context)
                      .emitViews(currentIndex: 1);
                  await BlocProvider.of<FetchSearchedMealsCubit>(context)
                      .fetchSearchedMeals(input: value);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
