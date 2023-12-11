import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:scooter_app/features/trusted_places/data/model/trusted_places_model.dart';

abstract class TrustedPlacesRepo{
  Future<Either<List<TrustedPlacesModel>,FirebaseException>> getTrustedPlaces();
  void launchUrlPage({required Uri url});
  void launchUrlPhone({required String url});
}