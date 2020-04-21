import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../pages/signUp_page.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Sign In',
          style: TextStyle(
              fontSize: 40.0,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Forgeten password ? ',
                  style: TextStyle(
                      fontSize: 19.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                ),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Card(
              elevation: 5.0,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    _buildEmailTextFormField(),
                    SizedBox(
                      height: 20.0,
                    ),
                    _buildPasswordTextFormField()
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(50.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black45,
                      blurRadius: 5.0,
                      offset: Offset(0.0, 5.0)),
                ],
              ),
              child: Center(
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Don't have an accont ?",
                  style: TextStyle(fontSize: 16.0, color: Colors.black45),
                ),
                SizedBox(
                  width: 10.0,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute (builder: (BuildContext context) => SignUpPage()));
                  },
                  child: Text(
                    "Sign UP",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmailTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: 'Your Email or Username',
          hintStyle: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.grey)),
    );
  }

  bool _toggleVisibility = true;
  Widget _buildPasswordTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: 'Password',
          hintStyle: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.grey),
          suffixIcon: IconButton(
            icon: _toggleVisibility ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
            onPressed: (){
              setState(() {
                _toggleVisibility = !_toggleVisibility;
              });
            },
          ),
      ),
      obscureText: _toggleVisibility,
    );
  }
}
