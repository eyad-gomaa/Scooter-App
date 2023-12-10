

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:scooter_app/features/trusted_places/data/model/trusted_places_model.dart';

class TrustedPlaceContainer extends StatelessWidget {
  const TrustedPlaceContainer({Key? key, required this.model}) : super(key: key);
  final TrustedPlacesModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Theme.of(context).colorScheme.secondary,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(model.name,style: Theme.of(context).textTheme.displaySmall,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.map_outlined),
                    const SizedBox(width: 20,),
                    Text("العنوان : ${model.address}",style: Theme.of(context).textTheme.titleMedium,),
                  ],
                ),
                Text("رقم الهاتف : ${model.phone}",style: Theme.of(context).textTheme.titleMedium,),
              ],
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
    );
  }
}
