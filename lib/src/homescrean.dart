import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodinfo/src/data/food_data.dart';
import 'widgets/bought_foods.dart';
import 'widgets/food_category.dart';
import 'widgets/home_top_info.dart';
import 'widgets/search_field.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Food> _foods = foods;
  final textStyle = TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        children: <Widget>[
          HomeTopInfo(),
          FoodCategory(),
          SizedBox(
            height: 16.0,
          ),
          SearchField(),
          SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Frequently Bought Foods',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: (){},
                child: Text('View all',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent)),
              ),
            ],
          ),
          SizedBox(
            height: 16.0,
          ),
          Column(
              children: _foods.map(_buildFootItems).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildFootItems(Food food){
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: BoughtFoods(food.id,food.name,food.imagePath , food.category , food.price , food.discount , food.rating
      ),
    );
  }
}


