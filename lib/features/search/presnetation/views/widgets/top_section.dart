import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/home/presentation/views/widgets/custom_text_field.dart';
import 'package:reciply/features/search/presnetation/manager/fetch_searched_meals_cubit/fetch_searched_meals_cubit.dart';

class TopSection extends StatefulWidget {
  const TopSection({super.key});

  @override
  State<TopSection> createState() => _TopSectionState();
}

class _TopSectionState extends State<TopSection> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
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
                flag = false;
                setState(() {});
                await BlocProvider.of<FetchSearchedMealsCubit>(context)
                    .fetchSearchedMeals(input: value);
              }
            },
          ),
          (flag)
              ? Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  child: Text(
                    'Recent Search',
                    style: AppStyles.semiBold16(context),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
