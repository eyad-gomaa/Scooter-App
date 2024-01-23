import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:scooter_app/features/help_yourself/data/model/youtube_videos_model.dart';
import 'get_videos_data_repo.dart';

class GetVideosDataRepoImpl implements GetVideosDataRepo{
  @override
  Future<List<YoutubeVideosModel>> getVideosData() async{
    List<YoutubeVideosModel> youtubeVideosList = [];
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    try {
      final data = await firestore.collection('service_youtube_links').get();
      for (var element in data.docs) {
        youtubeVideosList.add(YoutubeVideosModel.fromJson(element));
      }
      return youtubeVideosList;
    } on Exception catch (e) {
      if (kDebugMode) {
        print("there was an error fetching data !!!!!");
      }
      return youtubeVideosList;
    }

  }

}