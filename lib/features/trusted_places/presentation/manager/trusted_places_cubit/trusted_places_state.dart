
import '../../../data/model/trusted_places_model.dart';

abstract class TrustedPlacesState {}

class TrustedPlacesInitial extends TrustedPlacesState {}
class TrustedPlacesLoading extends TrustedPlacesState {}
class TrustedPlacesSuccess extends TrustedPlacesState {
  final List<TrustedPlacesModel> trustedPlacesList;

  TrustedPlacesSuccess({required this.trustedPlacesList});
}
class TrustedPlacesFailure extends TrustedPlacesState {}
