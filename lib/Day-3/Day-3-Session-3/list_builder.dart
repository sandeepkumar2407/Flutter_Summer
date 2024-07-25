import 'package:flutter/material.dart';
import 'list_column.dart';
import 'row.dart';

class PESUListBuilder extends StatelessWidget {
  final int n;

  const PESUListBuilder({
    super.key,
    required this.n,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: n,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('label-$index'),
          subtitle: Text('subtitle-$index'),
          leading: const Icon(
            Icons.run_circle_sharp,
            size: 50,
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right_sharp,
          ),
          onTap: () {
            print('$index tapped');
          },
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 8,
        );
      },
    );
  }
}
