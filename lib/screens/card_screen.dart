import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

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
          children: const [
            CustomCardType1(),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
                name: 'Paisaje',
                imageUrl:
                    'https://chiledescentralizado.cl/wp-content/uploads/2016/03/landscape-04.jpg'),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
                name: 'Paisaje con pinos',
                imageUrl:
                    'https://astelus.com/wp-content/viajes/Lago-Moraine-Parque-Nacional-Banff-Alberta-Canada.jpg'),
            CustomCardType2(
                imageUrl:
                    'https://chiledescentralizado.cl/wp-content/uploads/2016/03/landscape-04.jpg'),
            SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}
