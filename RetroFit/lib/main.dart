import 'dart:io';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:retro/Model/Model.dart';
import 'package:retro/Network/Retro_Api.dart';
import 'package:retro/Kiwi/Kiwi.dart';
import 'package:retro/Example/example.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

void main() {
  setup();
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var container = kiwi.Container();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
            child: SafeArea(
              child:
                    container.resolve<StorySet>(),
            )));
  }
}

class StorySet extends StatefulWidget {
  @override
  _StrorysetState createState() => _StrorysetState();
}

class _StrorysetState extends State<StorySet> {

  List<Retro_Datamodel> list_data= new List<Retro_Datamodel>();

  @override
  void initState() {
    RestClient  (Retro_Api().Dio_Data()).getTasks().then((response){
      setState(() {
        list_data.clear();
        list_data.addAll(response);
      });
    }).catchError((err){
      print(err);
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return  ListView.builder(
          itemCount: list_data.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
                      elevation: 10.0,
                      margin: EdgeInsets.all(10.0),
                      child: ListTile(
                            title: Text(list_data[index].name),
                            leading: Text(list_data[index].createdAt.toString()),
                            trailing: Text(list_data[index].id.toString())
                      ),
                    );
                  }
          );
  }
}