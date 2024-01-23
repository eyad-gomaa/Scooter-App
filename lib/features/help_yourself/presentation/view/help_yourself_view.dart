import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scooter_app/features/help_yourself/presentation/view/widget/help_yourself_view_body.dart';
import '../../data/repo/get_videos_data_repo_impl.dart';
import '../manager/get_videos_cubit/get_videos_cubit.dart';

class HelpYourselfView extends StatelessWidget {
  const HelpYourselfView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetVideosCubit(GetVideosDataRepoImpl())..getVideosData(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("ساعد نفسك"),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: HelpYourselfViewBody(),
      ),
    );
  }
}
