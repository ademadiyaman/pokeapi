import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_project/Constants/constants.dart';
import 'package:pokemon_project/Constants/ui_helper.dart';
import 'package:pokemon_project/model/pokemon_model.dart';
import 'package:pokemon_project/widgets/poke_information.dart';
import 'package:pokemon_project/widgets/poke_type_name.dart';

class DetailPage extends StatelessWidget {
  final PokemonModel pokemon;
  const DetailPage({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pokeballImageUrl = 'images/pokeball.png';
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: UIHelper.getIconPadding(),
              child: IconButton(
                  iconSize: 18.w,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
            ),
            PokeNameType(pokemon: pokemon),
            SizedBox(height: 20.h),
            Expanded(
                child: Stack(
              children: [
                Positioned(
                  child: Image.asset(
                    pokeballImageUrl,
                    fit: BoxFit.fitHeight,
                    height: 0.11.sh,
                  ),
                  right: 15,
                  top: 0,
                ),
                Positioned(
                    bottom: 0,
                    left: 10,
                    right: 10,
                    top: 0.10.sh,
                    child: PokeInformation(pokemon: pokemon)),
                Align(
                  alignment: Alignment.topCenter,
                  child: CachedNetworkImage(
                    imageUrl: pokemon.img ?? '',
                    height: 0.20.sh,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
