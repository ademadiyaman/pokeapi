import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_project/Constants/ui_helper.dart';
import 'package:pokemon_project/model/pokemon_model.dart';

class PokeImageAndBall extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeImageAndBall({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pokeballImageUrl = 'images/pokeball.png';
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            pokeballImageUrl,
            width: UIHelper.calculatedPokeImageAndBallSize(),
            height: UIHelper.calculatedPokeImageAndBallSize(),
            fit: BoxFit.fitHeight,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: CachedNetworkImage(
            imageUrl: pokemon.img ?? '',
            width: UIHelper.calculatedPokeImageAndBallSize(),
            height: UIHelper.calculatedPokeImageAndBallSize(),
            fit: BoxFit.fitHeight,
            placeholder: (context, url) => CircularProgressIndicator(
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
