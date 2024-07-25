import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'column.dart';
import 'container.dart';
//import 'exercise_1.dart';
import 'expanded,dart.dart';
import 'list.dart';
import 'list_builder.dart';
import 'list_column.dart';
import 'list_horizontall.dart';
import 'row.dart';
import 'stack.dart';
import 'stateful_counter.dart';
import 'stateful_row.dart';

// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'My New App',
//       home: PESURowPage(),
//     );
//   }
// }

class Day4Session1 extends StatelessWidget {
  const Day4Session1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PESURowPage();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('My Title'),
      ),
      drawer: Drawer(
        child: SafeArea(
            child: SafeArea(
                child: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Close the drawer!'),
        ))),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 100,
        ),
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
