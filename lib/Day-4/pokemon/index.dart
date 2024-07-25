import 'package:flutter/material.dart';
import 'api.dart';
import 'models.dart';

class PokemonsListPage extends StatefulWidget {
  const PokemonsListPage({super.key});

  @override
  State<PokemonsListPage> createState() => _PokemonsListPageState();
}

class _PokemonsListPageState extends State<PokemonsListPage> {
  List<Pokemon>? pokemons = null;

  @override
  void initState() {
    super.initState();

    getPokemons().then((result) {
      print('Response $result');

      setState(() {
        print('Resppnse $result');
        pokemons = result;
      });
    }).catchError((e, st) {
      print(e);
      debugPrintStack(stackTrace: st);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
