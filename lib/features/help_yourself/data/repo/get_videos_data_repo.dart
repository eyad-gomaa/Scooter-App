import '../model/youtube_videos_model.dart';

abstract class GetVideosDataRepo{
 Future<List<YoutubeVideosModel>> getVideosData();
}