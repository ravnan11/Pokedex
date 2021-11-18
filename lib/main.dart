import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/common/repository/pokemon_repository.dart';
import 'package:pokedex/features/home/container/home_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokedex',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeContainer(
        repository: PokemonRepository(dio: Dio())
      ),
    );
  }
}
