import 'package:flutter/material.dart';

const mobileView = 500;
const desktopView = 1200;

List numba = [
  [
    const DropdownMenuEntry<dynamic>(value: 15, label: '15'),
    const DropdownMenuEntry(value: 20, label: '20'),
  ],
  [
    const DropdownMenuEntry(value: 10, label: '10'),
    const DropdownMenuEntry(value: 15, label: '15'),
  ],
  [
    const DropdownMenuEntry(value: 5, label: '5'),
    const DropdownMenuEntry(value: 10, label: '10'),
  ],
  [
    const DropdownMenuEntry(value: 5, label: '5'),
    const DropdownMenuEntry(value: 10, label: '10'),
  ],
  [
    const DropdownMenuEntry(value: 2, label: '2'),
    const DropdownMenuEntry(value: 4, label: '4'),
    const DropdownMenuEntry(value: 5, label: '5'),
  ],
];




  //Entries for details
  List<DropdownMenuEntry> subject = [
    const DropdownMenuEntry(value: 0, label: 'English'),
    const DropdownMenuEntry(value: 1, label: 'Math'),
    const DropdownMenuEntry(value: 2, label: 'Science'),
  ];
  List<DropdownMenuEntry> examOption = [
    const DropdownMenuEntry(value: 0, label: 'Short Quiz'),
    const DropdownMenuEntry(value: 1, label: 'Long Quiz'),
    const DropdownMenuEntry(value: 2, label: 'Quarter Exams'),
  ];

  List<DropdownMenuEntry> examType = [
    const DropdownMenuEntry(value: 'Multiple Choice', label: 'Multiple Choice'),
    const DropdownMenuEntry(value: 'Identification', label: 'Identification'),
    const DropdownMenuEntry(value: 'Matching Type', label: 'Matching Type'),
    const DropdownMenuEntry(value: 'Problem Solving', label: 'Problem Solving'),
    const DropdownMenuEntry(value: 'Essay', label: 'Essay'),
  ];