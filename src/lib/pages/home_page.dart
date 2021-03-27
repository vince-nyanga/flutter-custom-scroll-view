import 'package:app/models/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Person> people;

  const HomePage({Key key, this.people}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(child:  SafeArea(
      child: CustomScrollView(
      slivers: [
        CupertinoSliverNavigationBar(
          largeTitle: Text('My People'),
        ),
        SliverList(delegate: SliverChildBuilderDelegate((context, index) {
          final person = people[index];
          return Material(
            child: ListTile(
              title: Text(person.name),
              subtitle: Text('${person.age}'),
            ),
          );
        }, 
        childCount: people.length,
        ))
      ],
    )));
  }
}
