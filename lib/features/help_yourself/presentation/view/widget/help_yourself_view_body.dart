import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scooter_app/features/help_yourself/presentation/view/widget/youtube_video_container.dart';
import '../../manager/get_videos_cubit/get_videos_cubit.dart';

class HelpYourselfViewBody extends StatelessWidget {
  const HelpYourselfViewBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return BlocBuilder<GetVideosCubit, GetVideosState>(
  builder: (context, state) {
    if(state is GetVideosSuccess){
      return ListView.builder(
        itemCount: state.dataList.length,
        itemBuilder: (context, index) {

          return YoutubeVideoContainer(title: state.dataList[index].videName, videoLink: state.dataList[index].videLink,);
        },
      );
    }
    else{
      return const Center(child: CircularProgressIndicator());
    }
  },
);
  }
}


