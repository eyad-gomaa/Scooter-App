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
