import 'package:flutter/material.dart';
import 'row.dart';

class PESUColumn extends StatelessWidget {
  const PESUColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FilledButton(
          onPressed: () {},
          child: Text('Loooooong Text'),
        ),
        SampleContainer(
          color: Colors.pink,
          label: '2',
        ),
        SampleContainer(
          color: Colors.yellow,
          label: '3',
        ),
      ],
    );
  }
}
