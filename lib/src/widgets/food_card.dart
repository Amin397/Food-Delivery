import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FoodCard extends StatelessWidget {

  final String categoryName;
  final String imagePaht;
  final int numberOfItem;


  FoodCard(this.categoryName, this.imagePaht, this.numberOfItem);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15.0),
      child: Card(
        elevation: 1.5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0 , vertical: 10.0),
          child: Row(
            children: <Widget>[
              Image(
                image: AssetImage(imagePaht),
                height: 70.0,
                width: 70.0,
              ),
              SizedBox(width: 20.0,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(categoryName , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18.0),),
                  Text('$numberOfItem Kinds'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
