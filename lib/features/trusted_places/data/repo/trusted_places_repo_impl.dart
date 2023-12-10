
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:scooter_app/features/trusted_places/data/model/trusted_places_model.dart';
import 'package:scooter_app/features/trusted_places/data/repo/trustes_places_repo.dart';

class TrustedPlacesRepoImpl implements TrustedPlacesRepo{
  @override
  Future<Either<List<TrustedPlacesModel>,FirebaseException>> getTrustedPlaces() async{
    List<TrustedPlacesModel> trustedPlaces = [];
      try {
        final placesDocs = await FirebaseFirestore.instance.collection("trusted_places").get();

        for (var element in placesDocs.docs) {
          trustedPlaces.add(TrustedPlacesModel.fromJson(element.data()));
        }
        return left(trustedPlaces);
      } on FirebaseException catch (e) {
        return right(e);
      }
  }

}