import 'package:flutter/material.dart';
import 'package:food_app/Models/food.dart';

class DetailsFoodPage extends StatelessWidget{
  Food mFood;
  DetailsFoodPage(this.mFood);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('${mFood.name}'),),
      body: Column(
        children: [
          Center(
            child: FadeInImage.assetNetwork(placeholder: 'assets/images/loading.gif', image: mFood.urlImage),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),

          Container(
            child: Text('Ingredients:', style: TextStyle(color: Colors.black, fontSize: 20),),
          ),

          Expanded(child: ListView.builder(
              itemCount: mFood.ingredients.length,
              itemBuilder: (context, index){
                return ListTile(
                  leading: CircleAvatar(
                    child: Text('${index+1}'),
                  ),
                  title: Text('${mFood.ingredients[index]}', style: TextStyle(color: Colors.black),),
                );
              }
          ))

        ],
      )
    );
  }

}