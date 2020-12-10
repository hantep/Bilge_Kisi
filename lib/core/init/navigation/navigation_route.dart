import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../components/cards/not_found_navigation.dart';
import '../../constants/navigation/navigation_constants.dart';
import '../../../screens/home/view/home_view.dart';

class NavigationRoute {
  static NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.HOME_VIEW:
        return normalNavigate(HomeScreen());
        break;
      default:
        return MaterialPageRoute(
          builder: (context) => NotFoundNavigationWidget(),
        );
    }
  }

  MaterialPageRoute normalNavigate(Widget widget) {
    return MaterialPageRoute(
      builder: (context) => widget,
    );
  }
}
