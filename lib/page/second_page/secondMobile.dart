import 'package:exam_ai/components/details.dart';
import 'package:exam_ai/constants/const.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:exam_ai/page/third_page/thirdDesktop.dart';
import 'package:exam_ai/api/exam_service.dart';
import 'package:exam_ai/page/second_page/secondDesktop.dart';

class SecondMobile extends StatefulWidget {
  const SecondMobile({super.key});

  @override
  State<SecondMobile> createState() => _SecondMobileState();
}

class _SecondMobileState extends State<SecondMobile> {
  final ExamService _examService = ExamService();
  TextEditingController items = TextEditingController();
  TextEditingController examFormatController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  PlatformFile? file;
  int selectedSubject = 0;
  int selectedExamFormat = 0;
  int selectedExamType = 0;
  int selectedItemCount = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Creator\'s page', style: TextStyle(color: Colors.black)),
        elevation: 0,
      ),
      body: Column(children: [
        topRow(),

        //details

        Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              const SizedBox(width: 10),
              if (file != null) showSelectedFile(),
              const SizedBox(height: 10,),
              Details(
                label: 'Subject',
                entries: subjects,
                selectedValue: selectedSubject,
                controller: subjectController,
                width: width - 16,
                onSelected: (value) {
                  setState(() {
                    selectedSubject = value ?? 0;
                  });
                },
              ),
              SizedBox(
                height: 16,
              ),
              Details(
                label: 'Exam Formats',
                entries: examFormats,
                selectedValue: selectedExamFormat,
                controller: examFormatController,
                width: width - 16,
                onSelected: (value) {
                  setState(() {
                    selectedExamFormat = value ?? 0;
                  });
                },
              ),

              SizedBox(
                height: 16,
              ),

              DropdownMenu(
                label: const Text('Exam Type'),
                dropdownMenuEntries: examType,
                controller: items,
                menuHeight: 234,
                width: width - 16,
                onSelected: (value) {
                  setState(() {
                    selectedExamType = value ?? 0;
                    selectedItemCount = 0;
                  });
                },
              ),

              SizedBox(
                height: 16,
              ),

             DropdownMenu(
            label: const Text('Items'),
            dropdownMenuEntries: numba[selectedExamType],
            menuHeight: 234,
            width: width - 16,
            onSelected: (int? value) {
              if (value != null)
                setState(() {
                  selectedItemCount = value;
                });
            },
          ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ]),
    );
  }

  Container topRow() {
    return Container(
      color: Colors.lightGreen,
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          // ElevatedButton(
          //   child: Text('CREATE'),
          //   style: ElevatedButton.styleFrom(
          //     foregroundColor: Colors.white,
          //     backgroundColor: Colors.deepPurple,
          //   ),
          //   onPressed: () {},
          // ),

          FilledButton.icon(
          onPressed: () async {
            final result = await _examService.generateMockQuestions(
                file!,
                selectedSubject,
                selectedExamFormat,
                selectedExamType,
                selectedItemCount);
            if (context.mounted) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ThirdDesktop(result: result, fileName: file!.name),
                ),
              );
            }
          },
          label: const Text('CREATE'),
          icon: const Icon(Icons.add),
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.purple[900])),
        ),
          SizedBox(width: 8),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
              child: DropdownMenu(
                expandedInsets: EdgeInsets.all(0),
                dropdownMenuEntries: [],
              ),
            ),
          ),
          IconButton(icon: Icon(Icons.refresh), onPressed: () {}),
          IconButton(icon: Icon(Icons.cloud_upload), onPressed: pickFile),
          IconButton(icon: Icon(Icons.check), onPressed: () {}),
          IconButton(icon: Icon(Icons.print), onPressed: () {}),
        ],
      ),
    );
  }

  Row showSelectedFile() {
    return Row(
      children: [
        const Text('Selected File: '),
        InputChip(
          label: Text(file!.name),
          onDeleted: () {
            setState(() {
              file = null;
            });
          },
        ),
      ],
    );
  }


  Future<void> pickFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'docx', 'txt'],
    );
    if (result != null && result.files.isNotEmpty) {
      setState(() {
        file = result.files.single;
      });
    }
  }
}
