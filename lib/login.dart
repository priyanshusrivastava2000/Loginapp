import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new loginPage();
  }
}

class loginPage extends State<Login>{
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _password = new TextEditingController();
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
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: new Text("LOGIN",style: new TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w800,
          fontSize: 30
        ),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.blueGrey,
      bottomNavigationBar: Container(
        child: FlatButton.icon(onPressed: (){print("pressed");}, icon: Icon(Icons.accessible), label: Text("Accessbility")),
      ),
      body: new Container(
        alignment: Alignment.topCenter,
        child: new Column(
          children: <Widget>[
            new Image.asset(
              'images/user1.png',
              width: 70,
              height: 70,
              
            ),
            new Container(
              padding: EdgeInsets.all(15.0),
              height: 200,
              width: 400,
              color: Colors.grey,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _userController,
                    decoration: new InputDecoration(
                      hintText: "Username",
                      icon: new Icon(Icons.person)
                    ),
                  ),
                  new TextField(
                    controller: _password,
                    decoration: new InputDecoration(
                      hintText: "Password",
                      icon: new Icon(Icons.lock)
                    ),
                    obscureText: true,
                  ),
                  Padding(padding: EdgeInsets.all(10.5)),
                  new Row(
                    children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.only(left: 15),
                        child: new RaisedButton(onPressed: login,

                            color: Colors.blue,
                            child: Text(
                              "LOGIN",style: TextStyle(color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600
                            ),
                            ))
                      ),
                   new Container(
                     margin: const EdgeInsets.only(left: 100),
                     child: new RaisedButton(onPressed: clear,
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
            new Padding(padding: EdgeInsets.all(15.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("Welcome, $welcome",style: TextStyle(
                  fontSize: 20,
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
