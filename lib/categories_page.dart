import 'package:flutter/material.dart';
import 'package:food_app/categories_item.dart';
import 'package:food_app/fake_data.dart';
class CategoriesPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Container(
     padding: EdgeInsets.all(10),
     child: GridView(
       gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
           maxCrossAxisExtent: 300,
           childAspectRatio: 3/2,
           mainAxisSpacing: 10,
           crossAxisSpacing: 10,
       ),
       children: fake_category.map((e) => CategoriesItem(e)).toList(),

     ),
   );

  }
  
}