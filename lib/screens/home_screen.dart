import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Componentes en Flutter')),
        ),
        body: ListView.separated(
            itemBuilder: (context, i) => ListTile(
                  leading: Icon(
                    AppRoutes.menuOptions[i].icon,
                    color: AppTheme.primary,
                  ),
                  title: Text(AppRoutes.menuOptions[i].name),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppTheme.primary,
                  ),
                  onTap: () {
                    // final route = MaterialPageRoute(
                    //     builder: (context) => const ListView1Screen());

                    Navigator.pushNamed(
                        context, AppRoutes.menuOptions[i].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: AppRoutes.menuOptions.length));
  }
}
