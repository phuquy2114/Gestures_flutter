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
      home: Scaffold(body: MyHomePage(title: 'Flutter Gestures ')),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Inkwell"),
              onPressed: () {},
            ),
            InkWell(
              onTap: () {
                // using Scaffold
                Scaffold.of(context).showSnackBar(
                    SnackBar(content: Text("Leaning click listener ")));
              },
              child: Text("Click"),
            ),
            GestureDetector(
              onTap: () {
                print("GestureDetector");
              },
              child: Container(
                padding: EdgeInsets.all(20.0),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(14.0)),
                child: Text("My Button"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
