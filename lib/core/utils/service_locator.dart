import 'package:get_it/get_it.dart';
import 'package:scooter_app/features/home/data/repo/home_repo.dart';
import 'package:scooter_app/features/home/data/repo/home_repo_impl.dart';
import '../../features/trusted_places/data/repo/trusted_places_repo_impl.dart';
import '../../features/trusted_places/data/repo/trustes_places_repo.dart';

final getIt = GetIt.instance;

void setupServiceLocator(){
  getIt.registerSingleton<HomeRepo>(HomeRepoImpl());
  getIt.registerSingleton<TrustedPlacesRepo>(TrustedPlacesRepoImpl());
}