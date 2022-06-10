import 'package:flutter/material.dart';
import 'package:food_app/Models/Category.dart';

class FoodPage extends StatelessWidget{
  final Category category;


  FoodPage(this.category);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food from ${category.content}'),
      ),
      body: Container(
        child: Center(
          child: Text('This is ${category.content} page content'),
        ),
      ),
    );
  }
}