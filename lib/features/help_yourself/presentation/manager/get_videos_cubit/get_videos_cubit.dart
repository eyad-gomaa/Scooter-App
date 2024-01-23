import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/model/youtube_videos_model.dart';

import '../../../data/repo/get_videos_data_repo_impl.dart';

part 'get_videos_state.dart';

class GetVideosCubit extends Cubit<GetVideosState> {
  GetVideosCubit(this.repo) : super(GetVideosInitial());
  final GetVideosDataRepoImpl repo;
  void getVideosData()async{
    emit(GetVideosLoading());
    try {
      List<YoutubeVideosModel> data = await repo.getVideosData();
      emit(GetVideosSuccess(dataList: data));
    } on Exception catch (e) {
      emit(GetVideosFailure(errMessage: e.toString()));
      print("there was an error fetching data !!!!!");
    }
  }
}
