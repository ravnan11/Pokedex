// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:pokedex/common/models/pokemon.dart';

class DetailAppBarWidget extends StatelessWidget {
  const DetailAppBarWidget({Key? key,required this.pokemon,required this.onBack}) : super(key: key);
  final Pokemon pokemon;
  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: AppBar(
          title: Text(pokemon.name),
          elevation: 0,
          backgroundColor: pokemon.baseColor,
          leading: IconButton(
            onPressed: onBack , 
            icon: Icon(Icons.chevron_left),
          ),
        ),
      ),
    );
  }
}