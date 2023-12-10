import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:scooter_app/core/utils/app_router.dart';
import '../../../../../core/resources/color_manager.dart';
import '../../../../trusted_places/presentation/manager/trusted_places_cubit/trusted_places_cubit.dart';
import '../../manager/theme_cubit/theme_cubit.dart';
import '../../manager/theme_cubit/theme_state.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, AppThemeState>(
  builder: (context, state) {
    return Drawer(
        child: Padding(
          padding: const EdgeInsets.only(right: 20,left:20,top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome",style: Theme.of(context).textTheme.displayLarge,textAlign: TextAlign.start),
              const SizedBox(height: 30,),
              const DarkModeSwitchContainer(),

              GestureDetector(
                onTap:(){
                  BlocProvider.of<TrustedPlacesCubit>(context).getTrustedPlaces();
                  GoRouter.of(context).push(RouterPath.trustedPlacesView);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("اماكن الصيانه الموثوقه",style: Theme.of(context).textTheme.displaySmall,),
                  ],
                ),
              )
            ],
          ),
        ),
      );
  },
);
  }
}

class DarkModeSwitchContainer extends StatelessWidget {
  const DarkModeSwitchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Switch(
            activeColor: ColorManager.redColor,
            value: BlocProvider.of<ThemeCubit>(context).switchValue,
            onChanged: (value){
              if(value){
                BlocProvider.of<ThemeCubit>(context).setDarkMode();
              }else{
                BlocProvider.of<ThemeCubit>(context).setLightMode();
              }
            }

        ),
        Text("الوضع الداكن",style: Theme.of(context).textTheme.displaySmall,),
      ],
    );
  }
}
