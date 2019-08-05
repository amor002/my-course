import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State createState() {

    return _MyHomePage();
  }

}

class _MyHomePage extends State {

  TextEditingController username;
  TextEditingController password;
  String errorMessage;

  @override
  void initState() {
    super.initState();

    username = new TextEditingController();
    password = new TextEditingController();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(

              controller: username,
              decoration: InputDecoration(
                labelText: "username",
                errorText: errorMessage
              ),
            ),
            TextField(
              controller: password,
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "password",
                errorText: errorMessage

              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              child: RaisedButton(
                  onPressed: () {
                    if(username.text == "amr" && password.text == "123") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return new UserPage();
                      }));
                    }else {
                      password.clear();
                      setState(() {
                        errorMessage = "wrong user name or password";
                      });
                    }
              },
              child: Text("login"),
              ),
            )
          ],
        ),
      )
    );
  }

}