import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reciply/core/utils/app_styles.dart';
import 'package:reciply/core/widgets/shimmer_loading_list_view.dart';
import 'package:reciply/features/home/presentation/manager/fetch_trending_cubit.dart/fetch_trending_cubit.dart';
import 'package:reciply/features/home/presentation/views/widgets/featured_popular_category.dart';
import 'package:reciply/features/home/presentation/views/widgets/featured_trending_now.dart';
import 'package:reciply/features/home/presentation/views/widgets/home_top_section.dart';
import 'package:reciply/features/home/presentation/views/widgets/trending_now_word,.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        clipBehavior: Clip.none,
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        slivers: [
          const HomeTopSection(),
          const SliverToBoxAdapter(
            child: TrendingNowWord(),
          ),
          BlocBuilder<FetchTrendingCubit, FetchTrendingState>(
            builder: (context, state) {
              if (state is FetchTrendingLoading) {
                return const SliverToBoxAdapter(
                  child: ShimmerLoadingForHorizental(
                    widthArea: 280,
                    hightArea: 190,
                  ),
                );
              } else if (state is FetchTrendingSuccess) {
                return FeaturedTrendingNow(
                  recipesModel: state.recipesModel,
                );
              } else if (state is FetchTrendingFailure) {
                return SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(
                      20,
                    ),
                    child: Text(
                      state.errorMsg,
                      style: AppStyles.regular16(context),
                    ),
                  ),
                );
              } else {
                return const SliverToBoxAdapter(child: SizedBox());
              }
            },
          ),
          const FeaturedPopularCategory()
        ],
      ),
    );
  }
}
