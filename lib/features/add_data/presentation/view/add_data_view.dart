import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scooter_app/features/add_data/presentation/view/widget/add_data_view_body.dart';

import '../../data/repo/data_repo_impl.dart';
import '../manager/add_data_cubit/add_data_cubit.dart';

class AddDataView extends StatelessWidget {
  const AddDataView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: BlocProvider(
              create: (context) => AddDataCubit(repo: DataRepoImpl()),
              child: const AddDataViewBody(),
            ),
          )
      ),
    );
  }
}
