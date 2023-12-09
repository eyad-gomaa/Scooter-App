import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scooter_app/core/utils/app_router.dart';
import 'package:scooter_app/features/add_data/data/data_model/data_model.dart';

class HomeDataContainer extends StatelessWidget {
  const HomeDataContainer({Key? key, required this.dataModel}) : super(key: key);
  final Data dataModel ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(RouterPath.editDataView,extra: dataModel);
      },
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              height: MediaQuery.sizeOf(context).height/5,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${dataModel.lastChangeKm} Km",style: Theme.of(context).textTheme.titleLarge,),
                        Text("اخر فحص",style: Theme.of(context).textTheme.titleLarge,),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${nextUpdate(dataModel.name,dataModel.lastChangeKm)} Km",style: Theme.of(context).textTheme.titleLarge,),
                        Text("الفحص القادم",style: Theme.of(context).textTheme.titleLarge,),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            width : MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height/10,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: AssetImage("assets/images/scooter_background.png"),
                    fit: BoxFit.cover
                )
            ),
            child: Center(child: Text(dataModel.name,style:Theme.of(context).textTheme.headlineSmall,)),
          )
        ],
      ),
    );
  }
}

int nextUpdate(String name,String lastUpdate){
  int lastUpdateInt = int.parse(lastUpdate);
  switch (name){
    case "زيت التروس":
      return lastUpdateInt + 5000;
    case "زيت المحرك":
      return lastUpdateInt + 1000;
    case "البوجيه":
      return lastUpdateInt + 3000;
    case "سير السحب":
      return lastUpdateInt + 12000;
    case "ضغط الاطارات":
      return lastUpdateInt + 300;
    case "الفرامل الخلفيه":
      return lastUpdateInt + 6000;
    case "الفرامل الاماميه":
      return lastUpdateInt + 6000;
    case "البطاريه":
      return lastUpdateInt + 12000;
    case "نظام التعليق الامامي و الخلفي":
      return lastUpdateInt + 6000;
    case "فلتر الهواء":
      return lastUpdateInt + 6000;
    default:
      return lastUpdateInt + 0;
  }
}