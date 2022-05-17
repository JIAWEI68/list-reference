import 'package:flutter/material.dart';

import '../models/subject.dart';

class ListViewBuilder extends StatelessWidget {
  List<Subject> subjectList;
  ListViewBuilder(this.subjectList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, i) {
        return ListTile(
          leading: CircleAvatar(child:
          Text(subjectList[i].semester.toStringAsFixed(1)),),
          title: Text(subjectList[i].shortName),
          subtitle: Text(subjectList[i].longName),
          onTap: () {
            print(subjectList[i].shortName + ' is selected');
          },
        );
      },
      itemCount: subjectList.length,
    );
  }
}
