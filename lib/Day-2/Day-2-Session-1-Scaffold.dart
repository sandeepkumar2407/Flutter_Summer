import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// void main() {
//   runApp(const MyApp());
// }

class Day2App extends StatelessWidget {
  const Day2App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('My Title'),
      ),
      drawer: Drawer(
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Close the drawer!'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Compose'),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).colorScheme.primary,
        child: Container(
          height: 100,
        ),
      ),
      body: MyBody2(),
    );
  }
}

class MyBody2 extends StatelessWidget {
  const MyBody2({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Scaffold.of(context).showBottomSheet(
          (context) => Container(
            color: Colors.red,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ),
        );
      },
      child: Text('Open Bottom Sheet'),
    );
  }
}
