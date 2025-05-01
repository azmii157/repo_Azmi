import 'package:flutter/material.dart';

class NumberThreeScreen extends StatelessWidget {
  const NumberThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const FlutterLogo(),
        title: const Text('slicing ui'),
        actions: const [
          Icon(Icons.more_vert),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          children: List.generate(18, (index) {
            final isEven = index % 2 == 0;
            return Container(
              color: isEven ? Colors.blue : Colors.yellow,
              alignment: Alignment.center,
              child: const Text(
                'Hello',
                style: TextStyle(fontSize: 12),
              ),
            );
          }),
        ),
      ),
    );
  }
}
