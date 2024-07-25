import 'package:flutter/material.dart';
import 'imports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  void navigateToPage(BuildContext context, StatelessWidget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('Summer Course'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  navigateToPage(context, HomePage());
                },
                child: Text('Day-2-main'),
              ),
              ElevatedButton(
                onPressed: () {
                  navigateToPage(context, Day2App());
                },
                child: Text('Day-2-Scaffold'),
              ),
              ElevatedButton(
                onPressed: () {
                  navigateToPage(context, Day3Session1());
                },
                child: Text('Day-3-session-1'),
              ),
              ElevatedButton(
                onPressed: () {
                  navigateToPage(context, Day3Session2());
                },
                child: Text('Day-3-session-2'),
              ),
              ElevatedButton(
                onPressed: () {
                  navigateToPage(context, Day3Session3());
                },
                child: Text('Day-3-session-3'),
              ),
              ElevatedButton(
                onPressed: () {
                  navigateToPage(context, Day4Session1());
                },
                child: Text('Day-4-session-1'),
              ),
            ],
          ),
        ));
  }
}
