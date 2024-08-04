import "package:get_it/get_it.dart";
import "package:reciply/core/utils/api_service.dart";
import "package:reciply/features/home/data/repos/home_repo_implement.dart";

final GetIt getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton(ApiService());
  getIt.registerSingleton(
    HomeRepoImplement(
      apiService: getIt.get<ApiService>(),
    ),
  );
}
