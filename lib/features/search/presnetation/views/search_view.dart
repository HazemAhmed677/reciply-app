import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reciply/core/utils/service_locator.dart';
import 'package:reciply/features/home/data/repos/home_repo_implement.dart';
import 'package:reciply/features/search/presnetation/manager/fetch_recent_search_cubit/fetch_recent_serch_meals_cubit.dart';
import 'package:reciply/features/search/presnetation/manager/fetch_searched_meals_cubit/fetch_searched_meals_cubit.dart';
import 'package:reciply/features/search/presnetation/views/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SearchViewBody();
  }
}
