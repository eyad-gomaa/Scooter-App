import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scooter_app/core/utils/app_router.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {

    Future.delayed(const Duration(seconds: 5),(){
      dataAdded();
    });
    super.initState();
  }
  dataAdded()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    bool? isDataAdded =  prefs.getBool("dataAdded");
    if(isDataAdded != null || isDataAdded == true){
      GoRouter.of(context).pushReplacement(RouterPath.homeView);
    }else{
      GoRouter.of(context).pushReplacement(RouterPath.onboardingView);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Center(child: Text("Scooter App",style: Theme.of(context).textTheme.displayLarge,))
      ],
    );
  }
}


