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
        title: Text(
          'mayple',
          style: TextStyle(
              color: Colors.black, fontSize: 35.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      child: Image.asset(
                        'assets/ironman2.png',
                        height: 400,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(10.0, 100.0, 0.0, 0.0),
                      child: Text(
                        "Find your industry's top vetted marketing experts",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0),
                      )),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Table(
                  border: TableBorder.all(color: Colors.transparent),
                  children: [
                    TableRow(children: [
                      Column(
                        children: [
                          Text(
                            'Stefan Garlson',
                            style: TextStyle(
                                color: Colors.black,
                                letterSpacing: 2.0,
                                fontSize: 25.0),
                          ),
                          Text(
                            '4.0    ★★★★☆',
                            style: TextStyle(
                                color: Colors.orange[600],
                                letterSpacing: 3.0,
                                fontSize: 15.0),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 50.0,
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder(), primary: Colors.orange),
                          ),
                        ],
                      )
                    ]),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Table(
                  border: TableBorder.all(color: Colors.grey),
                  children: [
                    TableRow(children: [
                      Column(
                        children: [
                          Text('MARKETING EXPERTISE:'),
                          Text('Tech expert')
                        ],
                      ),
                      Column(
                        children: [Text('EXPERIENCE:'), Text('8 YEARS')],
                      )
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          Text('WORKED WITH:'),
                          Text('Jolt, Monday, Salesforce')
                        ],
                      ),
                      Column(
                        children: [
                          Text('AVG. INCREASE IN SALES:'),
                          Text('+146%')
                        ],
                      )
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
