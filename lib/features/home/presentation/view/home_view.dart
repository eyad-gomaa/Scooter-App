import 'package:flutter/material.dart';
import 'package:scooter_app/features/home/presentation/view/widget/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Scooter App",style: Theme.of(context).textTheme.displayMedium,),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: const SafeArea(
        child: HomeViewBody(),
      ),
    );
  }
}
