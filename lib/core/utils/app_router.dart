import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/view/home_view.dart';
class RouterPath{
  static const homeView = "/homeView";
}
final GoRouter router = GoRouter(
    routes: [
    //************* SplashScreen *************
    GoRoute(
    path: RouterPath.homeView,
    builder: (BuildContext context, GoRouterState state) =>
    const HomeView()),
    ]
);