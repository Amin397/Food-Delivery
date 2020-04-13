import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../data/category_data.dart';
import '../widgets/food_card.dart';
import '../models/category_model.dart';

class FoodCategory extends StatelessWidget {
  final List<Category> _categories = categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context , int index){
          return FoodCard(
            _categories[index].categoryName,
            _categories[index].imagePath,
            _categories[index].numberOfItem
          );
        },
      ),
    );
  }
}
