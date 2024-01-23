part of 'get_videos_cubit.dart';

@immutable
abstract class GetVideosState {}

class GetVideosInitial extends GetVideosState {}
class GetVideosLoading extends GetVideosState {}
class GetVideosSuccess extends GetVideosState {
  final List<YoutubeVideosModel> dataList;
  GetVideosSuccess({required this.dataList});
}
class GetVideosFailure extends GetVideosState {
  final String errMessage;

  GetVideosFailure({required this.errMessage});
}
