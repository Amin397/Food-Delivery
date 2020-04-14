import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 80.0,
              width: 45.0,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0)),
              child: ListView(
                children: <Widget>[
                  InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.keyboard_arrow_up,
                        color: Colors.grey,
                      )),
                  Text(
                    '0',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                    textAlign: TextAlign.center,
                  ),
                  InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.grey,
                      )),
                ],
              ),
            ),
            SizedBox(
              width: 18.0,
            ),
            Container(
              height: 70.0,
              width: 70.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/lunch.jpeg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(50.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 8.0,
                      offset: Offset(0.0, 5.0))
                ],
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Grilled Chicken',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  '3.0',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.orangeAccent,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                    height: 30.0,
                    width: 140.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        _order_cancels(),
                        _order_cancels(),
                        _order_cancels(),
                      ],
                    ))
              ],
            ),
            Spacer(),
            IconButton(
              alignment: Alignment.topRight,
              onPressed: (){},
                icon: Icon(
              Icons.cancel,
              color: Colors.grey,
            ))
          ],
        ),
      ),
    );
  }

  Widget _order_cancels() {
    return Row(
      children: <Widget>[
        Text(
          'Chicken',
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(
          width: 3.0,
        ),
        InkWell(
            onTap: () {},
            child: Text(
              'x',
              style: TextStyle(
                  color: Colors.red.shade900, fontWeight: FontWeight.bold),
            )),
        SizedBox(
          width: 10.0,
        )
      ],
    );
  }
}
