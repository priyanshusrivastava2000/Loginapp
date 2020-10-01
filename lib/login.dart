import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new loginPage();
  }
}

class loginPage extends State<Login>{
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _password = TextEditingController();
  
  
  String welcome = "";
  
  void clear(){
    _userController.clear();
    _password.clear();
  }
  
  void login(){
    setState(() {
      if (_userController.text.isNotEmpty && _password.text.isNotEmpty){
        welcome = _userController.text ;
      }
      else{
        welcome= "NO USER LOGIN";
      }
    });

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN",style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w800,
          fontSize: 31
        ),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.blueGrey,
      bottomNavigationBar: Container(
        child: FlatButton.icon(onPressed: (){print("pressed");}, icon: Icon(Icons.accessible), label: Text("Accessbility")),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            Image.asset(
              'images/user1.png',
              width: 70,
              height: 70,
              
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              height: 200,
              width: 400,
              color: Colors.grey,
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _userController,
                    decoration: new InputDecoration(
                      hintText: "Username",
                      icon: Icon(Icons.person)
                    ),
                  ),
                  TextField(
                    controller: _password,
                    decoration: new InputDecoration(
                      hintText: "Password",
                      icon: Icon(Icons.lock)
                    ),
                    obscureText: true,
                  ),
                  Padding(padding: EdgeInsets.all(10.5)),
                  Row(
                    children: <Widget>[
                      new Container(
                        margin: EdgeInsets.only(left: 15),
                        child: RaisedButton(onPressed: login,

                            color: Colors.blue,
                            child: Text(
                              "LOGIN",style: TextStyle(color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600
                            ),
                            ))
                      ),
                   Container(
                     margin: EdgeInsets.only(left: 100),
                     child: RaisedButton(onPressed: clear,
                         color: Colors.blue,
                         child: Text(
                           "CLEAR",style: TextStyle(
                             fontSize: 20,
                             color: Colors.white,
                             fontWeight: FontWeight.w600
                         ),)
                     ),
                   )
                  ],
                  )
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(15.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Welcome, $welcome",style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w900,
                  color: Colors.orangeAccent
                ),)
              ],
            )
          ],
        ),
      ),
          );
  }
}
