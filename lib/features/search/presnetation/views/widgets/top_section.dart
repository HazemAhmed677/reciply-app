import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/features/home/presentation/views/widgets/custom_text_field.dart';
import 'package:reciply/features/search/presnetation/manager/fetch_searched_meals_cubit/fetch_searched_meals_cubit.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
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
                await BlocProvider.of<FetchSearchedMealsCubit>(context)
                    .fetchSearchedMeals(input: value);
              }
            },
          )
        ],
      ),
    );
  }
}
