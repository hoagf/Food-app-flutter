import 'package:flutter/material.dart';
import 'package:food_app/Models/Category.dart';
import 'Models/Category.dart';


class CategoriesItem extends StatelessWidget{
  Category category;
  CategoriesItem(this.category);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            category.color.withOpacity(0.7),
            category.color,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft
        ),

      ),
      alignment: Alignment.center,
      child: Text(category.content, style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),),
    );
  }
}