import 'package:flutter/material.dart';

import 'widget/best_products_view_body.dart';

class BestProductsView extends StatelessWidget {
  const BestProductsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
            child: BestProductsViewBody()
        )
    );
  }
}
