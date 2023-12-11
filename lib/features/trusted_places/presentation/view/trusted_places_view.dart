import 'package:flutter/material.dart';
import 'package:scooter_app/features/trusted_places/presentation/view/widget/trusted_places_view_body.dart';

class TrustedPlacesView extends StatelessWidget {
  const TrustedPlacesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text("اماكن الصيانه الموثوقه"),
      ),
        body: const SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TrustedPlacesViewBody(),
            ),
        )
    );
  }
}
