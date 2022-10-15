import 'package:flutter/material.dart';
import 'package:pokemon_project/model/pokemon_model.dart';
import 'package:pokemon_project/services/pokedex_api.dart';
import 'package:pokemon_project/widgets/app_title.dart';
import 'package:pokemon_project/widgets/pokemon_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) => Column(
          children: [
            AppTitle(),
            Expanded(child: PokemonList()),
          ],
        ),
      ),
    );
  }
}
