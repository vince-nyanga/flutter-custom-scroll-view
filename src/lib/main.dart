import 'package:app/models/models.dart';
import 'package:app/pages/pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Person> people =
      List.generate(100, (index) => Person('Person ${index + 1}', index + 1));
      
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        title: 'Custom Scroll',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          DefaultMaterialLocalizations.delegate,
          DefaultCupertinoLocalizations.delegate,
          DefaultWidgetsLocalizations.delegate,
        ],
        theme: CupertinoThemeData(primaryColor: Colors.teal),
        home: HomePage(
          people: people,
        ));
  }
}
