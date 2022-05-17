import 'package:flutter/material.dart';
import 'package:listview_tryout/models/subject.dart';

class ListViewSeperated extends StatelessWidget {
  List<Subject> subjectList;
  Function removeItem;
  ListViewSeperated(this.subjectList, this.removeItem);


  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx, i) {
        return ListTile(
          leading: CircleAvatar(child:
          Text(subjectList[i].semester.toStringAsFixed(1)),),
          title: Text(subjectList[i].shortName),
          subtitle: Text(subjectList[i].longName),
          onTap: () {
            print(subjectList[i].shortName + ' is selected');
          },
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () => removeItem(i),
          ),
        );
      },
      itemCount: subjectList.length,
      separatorBuilder: (ctx, i) {
        return Divider( height: 3, color: Colors.blueGrey);
      },
    );
  }
  }

