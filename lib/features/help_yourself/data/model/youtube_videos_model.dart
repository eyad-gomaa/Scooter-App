 class YoutubeVideosModel {
   final String videName;
   final String videLink;
  YoutubeVideosModel({
    required this.videName,
    required this.videLink
  });
   factory YoutubeVideosModel.fromJson(jsonData){
     return YoutubeVideosModel(
         videName: jsonData["videoTitle"] ?? "Undefined",
       videLink: jsonData["videoUrl"] ?? "Undefined",
     );
   }
}

 // final List<YoutubeVideosModel> youtubeVideosList = [
 //   YoutubeVideosModel(videName: 'تغير زيت وتنظيف فلتر الزيت لسكوتر', videLink: 'https://www.youtube.com/watch?v=O1fk1m8lZDw&t=92s'),
 //   YoutubeVideosModel(videName: 'تغير زيت التروس لسكوتر', videLink: "https://www.youtube.com/watch?v=2cuBWpiZoZM&t=180s"),
 //   YoutubeVideosModel(videName: "تغير فلتر الهواء", videLink: "https://www.youtube.com/watch?v=ML7Q0BQOD8Q"),
 //   YoutubeVideosModel(videName: "تغير عوامه البنزين", videLink: "https://www.youtube.com/watch?v=J7K8k9wlZE8"),
 //   YoutubeVideosModel(videName: 'تغير البوجية لسكوتر', videLink: "https://www.youtube.com/watch?v=7fpch3ngwKE"),
 //   YoutubeVideosModel(videName: 'تغير تيل الفرامل الأمامي لسكوتر', videLink: 'https://www.youtube.com/watch?v=gNBQqusm2vc&t=540s')
 // ];