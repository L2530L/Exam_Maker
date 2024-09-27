import 'package:exam_ai/components/choice.dart';
import 'package:exam_ai/components/details.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  

  TextEditingController items = TextEditingController();
  List numba = [
    [
      DropdownMenuEntry<dynamic>(value: 15, label: '15'),
      DropdownMenuEntry(value: 20, label: '20'),
    ],
    [
      DropdownMenuEntry(value: 10, label: '10'),
      DropdownMenuEntry(value: 15, label: '15'),
    ],
    [
      DropdownMenuEntry(value: 5, label: '5'),
      DropdownMenuEntry(value: 10, label: '10'),
    ],
    [
      DropdownMenuEntry(value: 5, label: '5'),
      DropdownMenuEntry(value: 10, label: '10'),
    ],
    [
      DropdownMenuEntry(value: 2, label: '2'),
      DropdownMenuEntry(value: 4, label: '4'),
      DropdownMenuEntry(value: 5, label: '5'),
    ],
  ];
  
  int selectedIndex = 0;


  //Entries for details
  List<DropdownMenuEntry> subject = [
    DropdownMenuEntry(value: 0, label: 'English'),
    DropdownMenuEntry(value: 1, label: 'Math'),
    DropdownMenuEntry(value: 2, label: 'Science'),
  ];
  List<DropdownMenuEntry> examOption = [
    DropdownMenuEntry(value: 0, label: 'Short Quiz'),
    DropdownMenuEntry(value: 1, label: 'Long Quiz'),
    DropdownMenuEntry(value: 2, label: 'Quarter Exams'),
  ];

  List<DropdownMenuEntry> examType = [
    DropdownMenuEntry(value: 'Multiple Choice', label: 'Multiple Choice'),
    DropdownMenuEntry(value: 'Identification', label: 'Identification'),
    DropdownMenuEntry(value: 'Matching Type', label: 'Matching Type'),
    DropdownMenuEntry(value: 'Problem Solving', label: 'Problem Solving'),
    DropdownMenuEntry(value: 'Essay', label: 'Essay'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exam'),
        backgroundColor: Colors.lightGreenAccent[400],
        toolbarHeight: 30,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration:
                BoxDecoration(border: Border.all(style: BorderStyle.solid)),
            padding: EdgeInsets.all(10),
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
                const SizedBox(
                  width: 30,
                ),
                const DropdownMenu(
                  dropdownMenuEntries: [],
                  width: 200,
                ),
                const SizedBox(
                  width: 50,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.cached)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.abc)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.cloud_upload_outlined)),
                  ],
                ),
                Expanded(
                    child: const SizedBox(
                  width: 500,
                )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.file_download_done_outlined)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.print)),
              ],
            ),
          ),
          SizedBox(height: 20,),
          //2
          Details(
            label: 'Subject',
            entries: subject,
            controller: TextEditingController(),
          ),
          const SizedBox(height: 30,),
          Details(
            label: 'Exam Options',
            entries: examOption,
            controller: TextEditingController()
          ),
          const SizedBox(height: 30,),
          DropdownMenu(
            label: Text('Exam Type'),
            dropdownMenuEntries: examType,
            controller: items,
            menuHeight: 234,
            width: 250,
            onSelected:(value){
            if (value == 'Multiple Choice'){
              setState(() {
                selectedIndex = 0;
              });
            }
            else if (value == 'Identification'){
              setState(() {
                selectedIndex = 1;
              });
            }
            else if (value == 'Matching Type'){
              setState(() {
                selectedIndex = 2;
              });
            }
            else if (value == 'Problem Solving'){
              setState(() {
                selectedIndex = 3;
              });
            }
            else if (value == 'Essay'){
              setState(() {
                selectedIndex = 4;
              });
            }
            },
          ),
          const SizedBox(height: 30,),
          DropdownMenu(
            label: Text('Items'),
            dropdownMenuEntries: numba[selectedIndex],
            menuHeight: 234,
            width: 250,
    )
    
        ],
      ),
    );
  }
}


