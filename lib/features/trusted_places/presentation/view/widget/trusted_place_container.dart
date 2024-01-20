import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scooter_app/features/trusted_places/data/model/trusted_places_model.dart';
import 'package:scooter_app/features/trusted_places/presentation/manager/trusted_places_cubit/trusted_places_cubit.dart';
import 'package:scooter_app/features/trusted_places/presentation/view/widget/icon_container.dart';

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
                        Align(
                          alignment: Alignment.center,
                            child: Text(model.name,style: Theme.of(context).textTheme.displaySmall,overflow: TextOverflow.ellipsis,)),
                        GestureDetector(
                            onTap: (){
                              BlocProvider.of<TrustedPlacesCubit>(context).launchUrlPage(url: Uri.parse(model.location));
                            },
                            child: const ContainerIcon(icon: Icons.directions, color: Colors.blue,)),
                        GestureDetector(
                            onTap: (){
                              BlocProvider.of<TrustedPlacesCubit>(context).launchUrlPhone(url: model.phone);
                            },
                          child: const ContainerIcon(icon: Icons.phone,color: Colors.green,)),
                      ],
                    ),
                  ),
                  const SizedBox(width: 25,),
                  ImageContainer(model: model),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 25,),
      ],
    );
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
    required this.model,
  });

  final TrustedPlacesModel model;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:150,

      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: CachedNetworkImage(
          fit: BoxFit.cover,
          imageUrl: model.image,
          placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}


