import 'dart:math';

import 'package:flutter/material.dart';

class Food{
  int id = 0;
  String name ='';
  String urlImage ='';
  Duration duration;
  Complexity complexity;
  List<String> ingredients = <String>[];
  int categoryId;

  Food({
      required this.name,
      required this.urlImage,
      required this.duration,
      required this.complexity,
      required this.ingredients,
      required this.categoryId}){
    this.id = Random().nextInt(1000);
  }
}
enum Complexity{
  Simple,
  Medium,
  Hard
}