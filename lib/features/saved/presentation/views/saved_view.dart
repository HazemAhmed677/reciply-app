import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reciply/features/saved/presentation/manager/fetch_all_meals_cubit/fetch_all_meals_cubit.dart';
import 'package:reciply/features/saved/presentation/views/widgets/saved_view_body.dart';

class SavedView extends StatefulWidget {
  const SavedView({super.key});

  @override
  State<SavedView> createState() => _SavedViewState();
}

class _SavedViewState extends State<SavedView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<FetchAllMealsCubit>(context).fetchAllMael();
  }

  @override
  Widget build(BuildContext context) {
    return const SavedViewBody();
  }
}
