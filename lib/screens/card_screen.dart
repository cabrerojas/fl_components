import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            Card(
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(
                      Icons.photo_album_outlined,
                      color: AppTheme.primary,
                    ),
                    title: Text('Card'),
                    subtitle: Text(
                        'Ad non eiusmod nulla id. Veniam ut adipisicing ex sint. Sint est dolore ullamco culpa officia esse fugiat proident in minim in incididunt ad. Ex laborum quis nulla minim excepteur veniam aute esse. Nulla irure qui duis officia do fugiat enim mollit deserunt laborum tempor elit aliqua.'),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
