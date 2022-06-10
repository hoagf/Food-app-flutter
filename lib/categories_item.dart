import 'package:flutter/material.dart';
import 'package:food_app/Models/Category.dart';
import 'package:food_app/food_page.dart';
import 'Models/Category.dart';
import 'food_page.dart';


class CategoriesItem extends StatelessWidget{
  Category category;
  CategoriesItem(this.category, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: (){
       Navigator.of(context).push(
         MaterialPageRoute(
           builder: (context) => FoodPage(category)
         )
       );
      },
      splashColor: Colors.purple,
      child: Container(
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
        child: Text(category.content, style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
}