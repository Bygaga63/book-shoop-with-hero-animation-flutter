import 'package:flutter/material.dart';

void main() => runApp(MyApp());

String text1 =
    'This is the app that allows you to discover and\nread ebooks and magazines.';
String text2 =
    'Borrow and read free books,\naudiobooks, and magazines from\nyour library using your phone or\ntablet. It\'s easy to get.';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              Hero(
                child: Image.asset(
                  'assets/logo.png',
                  height: 30.0,
                ),
                tag: 'logo',
              ),
              SizedBox(height: 110),
              Image.asset(
                'assets/img1.png',
                height: 250.0,
              ),
              SizedBox(height: 30.0),
              Text(
                'Hello',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                text1,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50.0),
              Hero(
                tag: 'button',
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => SecondScreen()));
                  },
                  color: Color(0xff2c2d37),
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 100.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 20),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Hero(
                        tag: 'logo',
                        child: Image.asset(
                          'assets/logo.png',
                          height: 30.0,
                        )),
                    Text('SKIP')
                  ]),
              SizedBox(height: 70),
              Image.asset(
                'assets/img2.png',
                height: 250.0,
              ),
              SizedBox(height: 20.0),
              Text(
                'Meet',
                style: TextStyle(fontSize: 30.0),
              ),
              SizedBox(height: 5),
              Text(
                'Libraryon',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
              ),
              SizedBox(height: 10.0),
              Text(
                text2,
                style: TextStyle(height: 1.4),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Borrow and reed free ebooks',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xffd5727f),
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xffd5727f)),
                  ),
                  Hero(
                    child: MaterialButton(
                      color: Color(0xff2c2d37),
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      minWidth: 50,
                      onPressed: () {},
                      child: Icon(
                        Icons.chevron_right,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    tag: 'button',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
