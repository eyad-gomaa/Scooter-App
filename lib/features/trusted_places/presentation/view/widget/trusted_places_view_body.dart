import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scooter_app/features/trusted_places/presentation/manager/trusted_places_cubit/trusted_places_cubit.dart';
import 'package:scooter_app/features/trusted_places/presentation/manager/trusted_places_cubit/trusted_places_state.dart';
import 'package:scooter_app/features/trusted_places/presentation/view/widget/trusted_place_container.dart';

class TrustedPlacesViewBody extends StatelessWidget {
  const TrustedPlacesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrustedPlacesCubit, TrustedPlacesState>(
      builder: (context, state) {
        if(state is TrustedPlacesSuccess){
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: state.trustedPlacesList.length,
              itemBuilder: (context, index) => TrustedPlaceContainer(model: state.trustedPlacesList[index],),
          );
        }else{
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
