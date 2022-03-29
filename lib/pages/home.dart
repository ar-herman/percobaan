import 'package:flutter/material.dart';
import 'package:listview_builder/pages/addData.dart';
import 'package:listview_builder/pages/class.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Logic"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: personData.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(personData[index].nama),
              subtitle: Text(personData[index].skill),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return AddData();
            },
          ));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
