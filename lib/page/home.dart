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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child:
              SearchBar(leading: const Icon(Icons.search), trailing: <Widget>[
            IconButton(onPressed: () {}, icon: const Icon(Icons.upload)),
          ]),
        ),
        const Text('Proceed to create Mock Exam'),
        Expanded(
          child: ListView.builder(
            itemCount: choices.length,
            itemBuilder: (_, index) {
              return ListTile(
                leading: Text(choices[index].label),
                title: Text(choices[index].name),
                trailing:
                    _selectedIndex == index ? const Icon(Icons.check) : null,
                onTap: () {
                  setState(() {
                    if (_selectedIndex == index) {
                      _selectedIndex = null;
                    } else {
                      _selectedIndex = index;
                    }
                  });
                },
                selected: _selectedIndex == index,
                selectedTileColor: Colors.deepPurple,
                selectedColor: Colors.white,
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 100),
          child: TextField(decoration: InputDecoration(hintText: 'Items',border: OutlineInputBorder()),maxLength: 2,),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 100  ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton(onPressed: () {}, child: Text('Save draft')),
              FilledButton(onPressed: () {}, child: Text('next'))
            ],
          ),
        )
      ],
    );
  }
}
