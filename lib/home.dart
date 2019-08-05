import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcome"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("welcome to our app!", style: TextStyle(fontSize: 24),),
            Image.network("https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-1/p240x240/57366700_2096339933818465_5808479407077064704_n.jpg?_nc_cat=110&_nc_oc=AQl6-UdlSBH7BHrhnOOuhq9RlSAuwMQJnOlZZNQyzUYvYDw6AkYYgTnXLIbY-2vpVgo&_nc_ht=scontent-hbe1-1.xx&oh=04ce65e7fe1d4f7f9149fdac98c8ddc6&oe=5DE73164")
          ],
        ),
      ),
    );
  }
}