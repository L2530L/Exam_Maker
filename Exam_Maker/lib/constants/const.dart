import 'package:flutter/material.dart';

const mobileView = 500;
const desktopView = 1200;

const List<List<DropdownMenuEntry<int>>> numba = [
  [
    DropdownMenuEntry<int>(value: 15, label: '15'),
    DropdownMenuEntry<int>(value: 20, label: '20'),
    DropdownMenuEntry<int>(value: 50, label: '50'),
    DropdownMenuEntry<int>(value: 100, label: '100'),
  ],
  [
    DropdownMenuEntry<int>(value: 10, label: '10'),
    DropdownMenuEntry<int>(value: 15, label: '15'),
  ],
  [
    DropdownMenuEntry<int>(value: 5, label: '5'),
    DropdownMenuEntry<int>(value: 10, label: '10'),
  ],
  [
    DropdownMenuEntry<int>(value: 5, label: '5'),
    DropdownMenuEntry<int>(value: 10, label: '10'),
  ],
  [
    DropdownMenuEntry<int>(value: 2, label: '2'),
    DropdownMenuEntry<int>(value: 4, label: '4'),
    DropdownMenuEntry<int>(value: 5, label: '5'),
  ],
];

//Entries for details
const List<DropdownMenuEntry<int>> subjects = [
  DropdownMenuEntry<int>(value: 0, label: 'English'),
  DropdownMenuEntry<int>(value: 1, label: 'Math'),
  DropdownMenuEntry<int>(value: 2, label: 'Science'),
];

const List<DropdownMenuEntry<int>> examFormats = [
  DropdownMenuEntry<int>(value: 0, label: 'Short Quiz'),
  DropdownMenuEntry<int>(value: 1, label: 'Long Quiz'),
  DropdownMenuEntry<int>(value: 2, label: 'Quarter Exams'),
];

const List<DropdownMenuEntry<int>> examType = [
  DropdownMenuEntry<int>(value: 0, label: 'Multiple Choice'),
  DropdownMenuEntry<int>(value: 1, label: 'Identification'),
  DropdownMenuEntry<int>(value: 2, label: 'Matching Type'),
  DropdownMenuEntry<int>(value: 3, label: 'Problem Solving'),
  DropdownMenuEntry<int>(value: 4, label: 'Essay'),
];

Map<int, String> examTypeToString = {
  0: 'Multiple Choice',
  1: 'Identification',
  2: 'Matching Type',
  3: 'Problem Solving',
  4: 'Essay',
};
