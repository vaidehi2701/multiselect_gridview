import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:multiselectgridview/grid.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.grey[200]),
  );
  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(elevation: 2),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  List<String> days = [
    "monday",
    "tuesday",
    "wednusday",
    "thursday",
    "friday",
    "saturday",
    "sunday",
  ];
  List<int> temp = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("example"),
        ),
        body: RaisedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return Grid(
                    days: days,
                    temp: temp,
                  );
                });
          },
          color: Colors.blue,
          child: Text("click"),
        ));
  }
}
