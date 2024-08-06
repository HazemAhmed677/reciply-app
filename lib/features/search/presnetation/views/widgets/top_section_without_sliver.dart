import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/home/presentation/views/widgets/custom_text_field.dart';
import 'package:reciply/features/search/presnetation/manager/fetch_searched_meals_cubit/fetch_searched_meals_cubit.dart';

class TopSectionWithoutSliver extends StatefulWidget {
  const TopSectionWithoutSliver({
    super.key,
  });
  @override
  State<TopSectionWithoutSliver> createState() =>
      _TopSectionWithoutSliverState();
}

class _TopSectionWithoutSliverState extends State<TopSectionWithoutSliver> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SafeArea(
          bottom: false,
          child: Center(
            child: Text(
              'Search recipes',
              style: AppStyles.semiBold16(context).copyWith(
                fontSize: 18,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        CustomTextField(
          onSubmettied: (value) async {
            if (value != '') {
              setState(() {});
              await BlocProvider.of<FetchSearchedMealsCubit>(context)
                  .fetchSearchedMeals(input: value);
            }
          },
        ),
      ],
    );
  }
}
