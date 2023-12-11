
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scooter_app/features/trusted_places/data/repo/trustes_places_repo.dart';
import 'package:scooter_app/features/trusted_places/presentation/manager/trusted_places_cubit/trusted_places_state.dart';

class TrustedPlacesCubit extends Cubit<TrustedPlacesState> {
  TrustedPlacesCubit(this.repo) : super(TrustedPlacesInitial());
  final TrustedPlacesRepo repo;
  getTrustedPlaces()async{
    try {
      emit(TrustedPlacesLoading());
      final response = await repo.getTrustedPlaces();
      response.fold(
              (l) => emit(TrustedPlacesSuccess(trustedPlacesList: l)),
              (r) => emit(TrustedPlacesFailure()),
      );
    } on Exception catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
  launchUrlPage({required Uri url}){
    repo.launchUrlPage(url: url);
  }
  launchUrlPhone({required String url}){
    repo.launchUrlPhone(url: url);
  }

}
