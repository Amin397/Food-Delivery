import 'package:flutter/material.dart';
import 'package:foodinfo/src/pages/signIn_page.dart';
import '../widgets/order_card.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Your Foods Cart' , style: TextStyle(color: Colors.black , fontSize: 24.0),),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0 ),
        child: ListView(
          children: <Widget>[
            OrderCard(),
            OrderCard(),
            OrderCard(),
            OrderCard(),
            SizedBox(height: 7.0,),
          ],
        ),
      ),
      bottomNavigationBar: _buildTotalContainer(),
    );
  }

  Widget _buildTotalContainer(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: 215.0,
        margin: EdgeInsets.only(top: 20.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                 Text('Cart Total' , style: TextStyle(color: Colors.grey , fontSize: 16.0 , fontWeight: FontWeight.bold),),
                 Text('23.0' , style: TextStyle(fontSize: 16.0 , fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 15.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Discount ' , style: TextStyle(color: Colors.grey , fontSize: 16.0 , fontWeight: FontWeight.bold),),
                Text('3.0' , style: TextStyle(fontSize: 16.0 , fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 15.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Tax' , style: TextStyle(color: Colors.grey , fontSize: 16.0 , fontWeight: FontWeight.bold),),
                Text('0.5' , style: TextStyle(fontSize: 16.0 , fontWeight: FontWeight.bold),),
              ],
            ),
            Divider(height: 20.0,color: Colors.grey,),
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Sub Total ' , style: TextStyle(color: Colors.grey , fontSize: 16.0 , fontWeight: FontWeight.bold),),
                Text('26.5' , style: TextStyle(fontSize: 16.0 , fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 20.0,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SignInPage()));
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 50.0),
                height: 50.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(color: Colors.black54 , blurRadius: 3.0 , offset: Offset(2.0, 3.0))
                  ]
                ),
                child: Text('Proceed to Checkout' , style: TextStyle(color: Colors.white , fontSize: 18.0 , fontWeight: FontWeight.bold),),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
