import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/models/models.dart';

class AppRoutes {
  static const initialRoute = '/home';

  static final menuOptions = <MenuOptions>[
    MenuOptions(
        route: '/listview1',
        name: 'Listview tipo 1',
        screen: const ListView1Screen(),
        icon: Icons.list),
    MenuOptions(
        route: '/listview2',
        name: 'Listview tipo 2',
        screen: const ListView2Screen(),
        icon: Icons.list),
    MenuOptions(
        route: '/alert',
        name: 'Alerts',
        screen: const AlertScreen(),
        icon: Icons.add_alert),
    MenuOptions(
        route: '/card',
        name: 'Cards',
        screen: const CardScreen(),
        icon: Icons.credit_card),
    MenuOptions(
        route: '/avatar',
        name: 'Circle Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
    MenuOptions(
        route: '/animated',
        name: 'Animated Container',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_outline_outlined),
    MenuOptions(
        route: '/inputs',
        name: 'Inputs',
        screen: const InputsScreen(),
        icon: Icons.input_rounded),
    MenuOptions(
        route: '/slider',
        name: 'Slider && Checks',
        screen: const SliderScreen(),
        icon: Icons.slow_motion_video),
    MenuOptions(
        route: '/listviewbuilder',
        name: 'InfiniteScroll && Pull To Refresh',
        screen: const ListViewBuilderScreen(),
        icon: Icons.build_circle_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'/home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   '/home': (BuildContext context) => const HomeScreen(),
  //   '/listview1': (BuildContext context) => const ListView1Screen(),
  //   '/listview2': (BuildContext context) => const ListView2Screen(),
  //   '/alert': (BuildContext context) => const AlertScreen(),
  //   '/card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}
