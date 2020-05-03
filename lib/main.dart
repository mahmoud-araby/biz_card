import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent.withOpacity(0.2),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width >= 550
              ? 550
              : MediaQuery.of(context).size.width * 0.9,
          height: 250,
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 40),
                padding: EdgeInsets.only(top: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('Assets/background.jpg'),
                  ),
                ),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.mail),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.mail),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(
                  'Assets/me.jpeg',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
