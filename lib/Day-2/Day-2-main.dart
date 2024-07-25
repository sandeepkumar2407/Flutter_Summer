import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'My New App',
//       home: HomePage(),
//     );
//   }
// }

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('My Title'),
      ),
      drawer: Drawer(
        child: SafeArea(
            child: SafeArea(
                child: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Close the drawer!'),
        ))),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Compose'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 100,
        ),
        color: Theme.of(context).colorScheme.primary,
      ),
      body: MyBody(),
    );
  }
}

class MyBody extends StatelessWidget {
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Image(
    //   image: NetworkImage(
    //     'https://images.pexels.com/photos/3737018/pexels-photo-3737018.jpeg'
    //   )
    // );

    // return Image.network(
    //   'https://images.pexels.com/photos/3737018/pexels-photo-3737018.jpeg',
    //
    // );

    // return CachedNetworkImage(
    //   imageUrl: 'https://images.pexels.com/photos/3737018/pexels-photo-3737018.jpe',
    //   errorWidget: (context, url, error) {
    //     return const Text(
    //         'Failed to load image',
    //       style: TextStyle(color: Colors.red)
    //     );
    //   },
    // );

    // return Center(
    //   child: ElevatedButton.icon(
    //     onPressed: () {
    //       print('TextButton Pressed');
    //     },
    //     label: const Text(
    //       'Click Me',
    //       style: TextStyle(
    //         fontSize: 50,
    //       ),
    //     ),
    //     icon: const Icon(
    //       Icons.add,
    //       size: 50,
    //       color: Colors.red,
    //     ),
    //   ),
    // );

    // return Center(
    //   child: CircularProgressIndicator(
    //     color: Colors.red,
    //     backgroundColor: Colors.grey,
    //     strokeWidth: 25,
    //     strokeAlign: 10,
    //   ),
    // );

    // return const Center(
    //   child: CupertinoActivityIndicator(
    //     radius: 50,
    //     color: Colors.amber,
    //   ),
    // );

    return const Center(
      child: LinearProgressIndicator(
        color: Colors.red,
        backgroundColor: Colors.amber,
        minHeight: 20,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    );
  }
}
