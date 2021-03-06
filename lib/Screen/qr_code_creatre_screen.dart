import 'package:flutter/material.dart';
import 'package:qrcodegenerator/Model/create_list.dart';
import 'package:qrcodegenerator/widget/list_button.dart';


class CreateScreen extends StatefulWidget {
  @override
  _CreateScreenState createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  List <CreateList>createList=[
  CreateList(name: 'Text'),
  CreateList(name: 'Text'),
  CreateList(name: 'Text'),
  CreateList(name: 'Text'),
  CreateList(name: 'Text'),
  CreateList(name: 'Text'),
  CreateList(name: 'Text'),
  CreateList(name: 'Text'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: createList.length,
        itemBuilder: (context,index)
        {
          return ListButton(
            name: createList[index].name,
            context: context,
          );
        },
      ),

    );
  }
}
