import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/fetch_data_cubit/fetch_data_cubit.dart';
import '../../manager/fetch_data_cubit/fetch_data_state.dart';
import 'home_data_container.dart';

class DataListView extends StatelessWidget {
  const DataListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: BlocBuilder<FetchDataCubit, FetchDataState>(
        builder: (context, state) {
          if(state is FetchDataSuccess){
            return GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: state.dataList.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: MediaQuery
                        .sizeOf(context)
                        .width / 2,
                    childAspectRatio: 2 / 1,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20
                ),
                itemBuilder: (context, index) => HomeDataContainer(dataModel:state.dataList[index] ,)
            );
          }else{
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}