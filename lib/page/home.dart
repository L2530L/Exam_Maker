

import 'package:exam_ai/components/choice.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Choice> choices = [
    Choice('Multiple Choice', '1'),
    Choice('Identification', '2'),
    Choice('Matching Type', '3'),
    Choice('Essay', '4'),
  ];
  int? _selectedIndex;
  
  List dropped = [Text('dsaf')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('data'),
          backgroundColor: Colors.lightGreenAccent[400],
        ),
        body: Container(
          decoration:
              BoxDecoration(border: Border.all(style: BorderStyle.solid)),
          padding: EdgeInsets.all(10),
          child: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FilledButton.icon(
                  onPressed: () {},
                  label: Text('CREATE'),
                  icon: Icon(Icons.add),
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.purple[900])),
                ),
                const SizedBox(width: 30,),
                const DropdownMenu(
                  dropdownMenuEntries: [],
                  width: 200,
                ),  
                const SizedBox(width: 50,),
            
                 Row(
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.cached)),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.abc)),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.cloud_upload_outlined)),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
