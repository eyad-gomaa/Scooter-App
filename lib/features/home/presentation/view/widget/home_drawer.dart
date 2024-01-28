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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome",style: Theme.of(context).textTheme.displayLarge,textAlign: TextAlign.start),
                  const SizedBox(height: 30,),
                  const DarkModeSwitchContainer(),
                  const SizedBox(height: 20,),
                  DrawerItem(
                    onTap: (){
                    BlocProvider.of<TrustedPlacesCubit>(context).getTrustedPlaces();
                    GoRouter.of(context).push(RouterPath.trustedPlacesView);
                  },
                    title: "اماكن الصيانه الموثوقه",

                  ),
                  const SizedBox(height: 20,),
                  DrawerItem(
                    onTap: (){
                    // BlocProvider.of<TrustedPlacesCubit>(context).getTrustedPlaces();
                    GoRouter.of(context).push(RouterPath.bestProductsView);
                  },
                    title: "افضل المنتجات",

                  ),
                  const SizedBox(height: 20,),
                  DrawerItem(
                    onTap: (){
                    // BlocProvider.of<TrustedPlacesCubit>(context).getTrustedPlaces();
                    GoRouter.of(context).push(RouterPath.helpYourselfView);
                  },
                    title: "ساعد نفسك",

                  ),

                ],
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.copyright_outlined,size: 11,color: Colors.white.withOpacity(0.2),),
                      Text("  eyad gomaa",style: TextStyle(color: Colors.white.withOpacity(0.2),fontSize: 10),),
                    ],
                  ))
            ],
          ),
        ),
      );
  },
);
  }
}

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key, required this.onTap, required this.title,
  });
  final void Function() onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(title,style: Theme.of(context).textTheme.bodyLarge,),
        ],
      ),
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
        Text("الوضع الداكن",style: Theme.of(context).textTheme.bodyLarge,),
      ],
    );
  }
}
