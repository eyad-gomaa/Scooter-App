import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/resources/color_manager.dart';
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
          padding: const EdgeInsets.all(20),
          child: Column(

            children: [
              Row(
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
              )
            ],
          ),
        ),
      );
  },
);
  }
}
