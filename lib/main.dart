import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'mayple',
      home: Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('mayple',
        style: TextStyle(
          color: Colors.black,
          fontSize: 35.0,
          fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset('assets/ironman2.png',
              width: 400, height: 500,),
              Text('Stefan Garlson',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 25.0
              ),
              ),
              Text('4.0    ★★★★☆',
              style: TextStyle(
                color: Colors.orange[600],
                letterSpacing: 3.0,
                fontSize: 15.0
              ),
              ),
              Divider(
                height: 50.0,
                color: Colors.grey,
                thickness: 0.5,
                endIndent: 0.0,
                )
            ],
          ),
        ),
      ),
    );
  }
}