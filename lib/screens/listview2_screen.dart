import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);

  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Listview')),
          elevation: 1,
          backgroundColor: Colors.deepOrange,
        ),
        body: ListView.separated(
            itemBuilder: (context, i) => ListTile(
                  title: Text(options[i]),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.deepOrangeAccent,
                  ),
                  onTap: () {
                    final game = options[i];
                    print(game);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}
