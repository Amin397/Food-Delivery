import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodinfo/src/pages/signIn_page.dart';
import '../pages/signUp_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Sign Up',
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
            SizedBox(
              height: 8.0,
            ),
            Card(
              elevation: 5.0,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    _buildUsernameTextFormField(),
                    SizedBox(
                      height: 20.0,
                    ),
                    _buildEmailTextFormField(),
                    SizedBox(
                      height: 20.0,
                    ),
                    _buildPasswordTextFormField(),
                    SizedBox(
                      height: 20.0,
                    ),
                    _buildRePasswordTextFormField(),
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
                  "Already have an accont ?",
                  style: TextStyle(fontSize: 16.0, color: Colors.black45),
                ),
                SizedBox(
                  width: 10.0,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => SignInPage()));
                  },
                  child: Text(
                    "Sign In",
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
          hintText: 'Email',
          hintStyle: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.grey)),
    );
  }

  Widget _buildUsernameTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: 'Username',
          hintStyle: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.grey)),
    );
  }

  bool _toggleVisibilityPass = true;
  Widget _buildPasswordTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Password',
        hintStyle: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.grey),
        suffixIcon: IconButton(
          icon: _toggleVisibilityPass ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
          onPressed: (){
            setState(() {
              _toggleVisibilityPass = !_toggleVisibilityPass;
            });
          },
        ),
      ),
      obscureText: _toggleVisibilityPass,
    );
  }

  bool _toggleVisibilityRePass = true;
  Widget _buildRePasswordTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Confirm Password',
        hintStyle: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.grey),
        suffixIcon: IconButton(
          icon: _toggleVisibilityRePass ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
          onPressed: (){
            setState(() {
              _toggleVisibilityRePass = !_toggleVisibilityRePass;
            });
          },
        ),
      ),
      obscureText: _toggleVisibilityRePass,
    );
  }
}
