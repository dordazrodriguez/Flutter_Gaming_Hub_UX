// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:epic_games_ui/UI/Views/home/homeView2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:epic_games_ui/UI/Views/startup/startup_view.dart';
import 'package:epic_games_ui/UI/Views/home/home_view.dart';

abstract class Routes {
  static const startupView = '/';
  static const homeView = '/home-view';
  static const homeView2 = '/homeView2';
  static const all = {
    startupView,
    homeView,
    homeView2,
  };
}

class Router1 extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router1>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.startupView:
        return MaterialPageRoute<dynamic>(
          builder: (context) => StartupView(),
          settings: settings,
        );
      case Routes.homeView:
        return MaterialPageRoute<dynamic>(
          builder: (context) => HomeView(),
          settings: settings,
        );
      case Routes.homeView2:
        return MaterialPageRoute<dynamic>(
          builder: (context) => HomeView2(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
