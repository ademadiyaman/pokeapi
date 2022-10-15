import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_project/Constants/constants.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pokeballImageUrl = 'images/pokeball.png';
    return Stack(
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: Text(
              Constants.title,
              style: Constants.getTitleTextStyle(),
            )),
        Align(
          alignment: Alignment.topRight,
          child: Image.asset(
            pokeballImageUrl,
            width: 100.w,
            height: 100.h,
            fit: BoxFit.fitWidth,
          ),
        ),
      ],
    );
  }
}
