import 'package:flutter/material.dart';

class PESURow extends StatelessWidget {
  const PESURow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Hello World'),
        FilledButton(
          onPressed: () {},
          child: Text('Click ME'),
        ),
        SampleContainer(color: Colors.pink, label: '1',),
      ],
    );
  }
}

class SampleContainer extends StatelessWidget {
  final Color color;
  final String label;
  final double? padding;

  const SampleContainer({
    super.key,
    required this.color,
    required this.label,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 30),
      color: color,
      child: Text(label),
    );
  }
}
