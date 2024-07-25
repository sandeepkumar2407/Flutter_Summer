import 'package:flutter/material.dart';
import 'list_column.dart';

class PESUListVIew extends StatelessWidget {
  final int n;

  const PESUListVIew({
    super.key,
    required this.n,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: List.generate(
      n,
      (index) {
        return Tile(label: 'Tile-$index');
      },
    ));
  }
}
