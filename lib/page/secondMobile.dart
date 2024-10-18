import 'package:exam_ai/components/details.dart';
import 'package:exam_ai/constants/const.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class SecondMobile extends StatefulWidget {
  const SecondMobile({super.key});

  @override
  State<SecondMobile> createState() => _SecondMobileState();
}

class _SecondMobileState extends State<SecondMobile> {
  PlatformFile? file;


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
              Details(label: 'Subject', entries: subject, controller: TextEditingController(),width: width-16,),
              SizedBox(height: 16,),
              Details(label: 'Subject', entries: subject, controller: TextEditingController(),width: width-16,),
              SizedBox(height: 16,),
              Details(label: 'Subject', entries: subject, controller: TextEditingController(),width: width-16,),
              SizedBox(height: 16,),
              
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
            ElevatedButton(
              child: Text('CREATE'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.deepPurple,
              ),
              onPressed: () {},
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
