import 'package:exam_ai/components/navigator.dart';
import 'package:exam_ai/components/search.dart';
import 'package:flutter/material.dart';

class FirstTablet extends StatefulWidget {
  const FirstTablet({super.key});

  @override
  State<FirstTablet> createState() => _FirstTabletState();
}

class _FirstTabletState extends State<FirstTablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MOCKexam'),backgroundColor: Colors.orangeAccent,centerTitle: true,),
      body: Column(
        children: [
          topRow()
        ],
      ),
    );
  }

  Row topRow() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
          navigator(context),
          searchBar()
        ],);
  }
}