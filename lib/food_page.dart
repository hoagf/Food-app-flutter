import 'package:flutter/material.dart';
import 'package:food_app/Models/Category.dart';
import 'package:food_app/Models/food.dart';
import 'package:food_app/fake_data.dart';
import 'details_food_page.dart';

class FoodPage extends StatelessWidget{
  static const String routeName = '/FoodPage';
  Category? category;


  FoodPage();

  @override
  Widget build(BuildContext context) {
    Map<String, Category>? agurments = ModalRoute.of(context)!.settings.arguments as Map<String, Category>?;
    category = agurments!['category'];
    List<Food> foods= FAKE_FOOD.where((element) => element.categoryId==category?.id).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Food from ${category?.content}'),
      ),
      body: Container(
        child: Center(
          child: ListView.builder(
            itemCount: foods.length,
              itemBuilder: (context, index){
                Food food = foods[index];
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => DetailsFoodPage(food)
                        ));
                  },
                  child: Stack(
                    children: [
                      Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.all(20),
                          child: ClipRect(
                              clipBehavior: Clip.hardEdge,
                              child: Center(
                                child:  FadeInImage.assetNetwork(
                                  placeholder: 'assets/images/loading.gif',
                                  image: food.urlImage,
                                ),
                              )
                          )
                      ),
                      Positioned(
                          top: 30,
                          left: 30,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.white, width: 2)),
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Icon(Icons.timer, color: Colors.white,size: 25),
                                Padding(padding: EdgeInsets.only(left: 5)),
                                Text('${food.duration.inMinutes} minutes',
                                  style: TextStyle(fontSize: 18, color: Colors.white),),

                              ],
                            ),
                          ))

                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}