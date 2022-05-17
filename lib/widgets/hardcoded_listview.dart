import 'package:flutter/material.dart';

import '../models/subject.dart';

class HardcodedListView extends StatelessWidget {
  List<Subject> subjectList;
  HardcodedListView(this.subjectList);

  @override
  Widget build(BuildContext context) {

    return ListView(children: [
      ListTile(
        leading: CircleAvatar(child:
        Text(subjectList[0].semester.toStringAsFixed(1)),),
        title: Text(subjectList[0].shortName),
        subtitle: Text(subjectList[0].longName),
        onTap: () {
          print(subjectList[0].shortName + ' is selected');
        },),
      ListTile(
        leading: CircleAvatar(child:
        Text(subjectList[1].semester.toStringAsFixed(1)),),
        title: Text(subjectList[1].shortName),
        subtitle: Text(subjectList[1].longName),
        onTap: () {
          print(subjectList[1].shortName + ' is selected');
        },

      ),
      ListTile(
        leading: CircleAvatar(child:
        Text(subjectList[2].semester.toStringAsFixed(1)),),
        title: Text(subjectList[2].shortName),
        subtitle: Text(subjectList[2].longName),
        onTap: () {
          print(subjectList[2].shortName + ' is selected');
        },
      ),
    ],
    );
  }
}

