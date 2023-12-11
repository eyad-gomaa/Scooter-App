

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scooter_app/features/trusted_places/data/model/trusted_places_model.dart';
import 'package:scooter_app/features/trusted_places/presentation/manager/trusted_places_cubit/trusted_places_cubit.dart';

class TrustedPlaceContainer extends StatelessWidget {
  const TrustedPlaceContainer({Key? key, required this.model}) : super(key: key);
  final TrustedPlacesModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(model.city,style: Theme.of(context).textTheme.displaySmall,),
        const SizedBox(height: 10,),
        Container(
          width: MediaQuery.sizeOf(context).width,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Theme.of(context).colorScheme.primary,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width-200,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(model.name,style: Theme.of(context).textTheme.displaySmall,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                                onTap: (){
                                  BlocProvider.of<TrustedPlacesCubit>(context).launchUrlPage(url: Uri.parse(model.location));
                                },
                                child: const ContainerIcon(icon: Icons.directions, color: Colors.blue,)),
                            SizedBox(
                              width:300,
                                child: Text("العنوان : ${model.address}",style: Theme.of(context).textTheme.titleMedium,overflow: TextOverflow.ellipsis,maxLines: 1,textDirection: TextDirection.rtl,)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                              GestureDetector(
                                  onTap: (){
                                    BlocProvider.of<TrustedPlacesCubit>(context).launchUrlPhone(url: model.phone);
                                  },
                                child: const ContainerIcon(icon: Icons.phone,color: Colors.green,)),
                            Text("رقم الهاتف : ${model.phone}",style: Theme.of(context).textTheme.titleMedium,),

                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20,),
                  SizedBox(
                    width: 110,
                    height: 110,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: model.image,
                        placeholder: (context, url) => const CircularProgressIndicator(),
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 20,),
      ],
    );
  }
}

class ContainerIcon extends StatelessWidget {
  const ContainerIcon({
    super.key, required this.icon, required this.color,
  });
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60,
        height: 30,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Icon(icon,color: Colors.white,));
  }
}
