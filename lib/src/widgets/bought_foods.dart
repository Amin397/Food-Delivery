import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoughtFoods extends StatefulWidget {
  final String id, name, imagePath, category;
  final double price, discount, rating;


  BoughtFoods(this.id, this.name, this.imagePath, this.category, this.price,
      this.discount, this.rating);

  @override
  _BoughtFoodsState createState() => _BoughtFoodsState();
}

class _BoughtFoodsState extends State<BoughtFoods> {

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 240.0,
            width: double.infinity,
            child: Image.asset(
              widget.imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              height: 70.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.black,
                Colors.black54,
                Colors.black45,
                Colors.black12,
                Colors.transparent,
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
            ),
          ),
          Positioned(
            left: 10.0,
            right: 10.0,
            bottom: 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.star , color: Theme.of(context).primaryColor,size: 17.0,),
                        Icon(Icons.star , color: Theme.of(context).primaryColor,size: 17.0,),
                        Icon(Icons.star , color: Theme.of(context).primaryColor,size: 17.0,),
                        Icon(Icons.star , color: Theme.of(context).primaryColor,size: 17.0,),
                        Icon(Icons.star , color: Theme.of(context).primaryColor,size: 17.0,),
                        Text('   (${widget.rating} Reviews)' , style: TextStyle(color: Colors.grey , fontSize: 14.0),)
                      ],
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(widget.price.toString() , style: TextStyle(color: Colors.orangeAccent , fontSize: 16.0 , fontWeight: FontWeight.bold),),
                    Text('min Order' , style: TextStyle(color: Colors.grey , fontSize: 15.0 ),)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
