import 'package:flutter/material.dart';
import 'package:listview_tryout/models/subject.dart';
import 'package:listview_tryout/widgets/hardcoded_listview.dart';
import 'package:listview_tryout/widgets/listview_builder.dart';
import 'package:listview_tryout/widgets/listview_builder.dart';
import 'package:listview_tryout/widgets/listview_seperated.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List <Subject> subjectList = [
    Subject(shortName: 'COMT', longName: 'Computation Thinking', semester:
    1.1),
    Subject(shortName: 'CDEV', longName: 'Coding and Development Project',
        semester: 1.2),
    Subject(shortName: 'DAVA', longName: 'Data Visualisation and Analytics',
        semester: 1.1),
    Subject(shortName: 'DBAV', longName: 'Database Application Development',
        semester: 1.2),
    Subject(shortName: 'DSAG', longName: 'Data Structures and Algorithms',
        semester: 1.2),
    Subject(shortName: 'ISSE', longName: 'IT Systems Security Essentials',
        semester: 1.2),
    Subject(shortName: 'LOMA', longName: 'Logic and Mathematics', semester:
    1.1),
    Subject(shortName: 'NETY', longName: 'Network Technology', semester:
    1.1),
    Subject(shortName: 'UXID',
        longName: 'User Experience and Interface Design',
        semester: 1.1),
    Subject(
        shortName: 'MBAP', longName: 'Mobile App Development', semester: 2.1),
  ];

  void removeItem(i) {
    print('Removing ' + subjectList[i].shortName);
    setState(() {
      subjectList.removeAt(i);// to refresh the page
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Tryout'),
      ),
      body: ListViewSeperated(subjectList, removeItem)
      );
  }
}
