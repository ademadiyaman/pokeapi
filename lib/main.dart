import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokemon_project/pages/home_page.dart';
import 'package:pokemon_project/services/pokedex_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(412, 732),
        builder: (BuildContext context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Pokedex',
            theme: ThemeData.dark().copyWith(
              textTheme: GoogleFonts.latoTextTheme(),
            ),
            home: const HomePage(),
          );
        });
  }
}
