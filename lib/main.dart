import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:reciply/constants.dart';
import 'package:reciply/core/managers/switch_views_cubit/switch_views_cubit.dart';
import 'package:reciply/core/utils/app_routers.dart';
import 'package:reciply/core/utils/service_locator.dart';
import 'package:reciply/core/utils/simple_bloc_observer.dart';
import 'package:reciply/core/models/recipe_model/meal_model.dart';
import 'package:reciply/core/managers/add_meal_cubit/add_meal_cubit.dart';
import 'package:reciply/core/managers/delete_meal_cubit/delete_meal_cubit.dart';
import 'package:reciply/features/home/data/repos/home_repo_implement.dart';
import 'package:reciply/features/saved/presentation/manager/fetch_all_meals_cubit/fetch_all_meals_cubit.dart';
import 'package:reciply/features/search/presnetation/manager/fetch_searched_meals_cubit/fetch_searched_meals_cubit.dart';

void main() async {
  setup(); // for dependency injection
  await Hive.initFlutter();
  Hive.registerAdapter(MealModelAdapter());
  await Hive.openBox<MealModel>(kMealBox);
  Bloc.observer = SimpleBlocObserver();
  runApp(
    DevicePreview(
      enabled: true,
      builder: (BuildContext context) => const ReciplyApp(),
    ),
  );
}

class ReciplyApp extends StatelessWidget {
  const ReciplyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SwitchViewsCubit(),
        ),
        BlocProvider(
          create: (context) => FetchSearchedMealsCubit(
            homeRepoImplement: getIt.get<HomeRepoImplement>(),
          ),
        ),
        BlocProvider(
          create: (context) => AddMealCubit(),
        ),
        BlocProvider(
          create: (context) => DeleteMealCubit(),
        ),
        BlocProvider(
          create: (context) => FetchAllMealsCubit(),
        ),
      ],
      child: MaterialApp.router(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouters.route,
      ),
    );
  }
}
