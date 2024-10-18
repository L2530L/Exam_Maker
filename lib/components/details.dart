import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Details extends StatelessWidget {
  final List<DropdownMenuEntry> entries;
  final String label;
  final TextEditingController controller;
  double width;

  Details({
    super.key,
    required this.label,
    required this.entries,
    required this.controller,
    this.width=250,
  });

  check(value){
    
  }

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      label: Text(label),
      dropdownMenuEntries: entries,
      menuHeight: 234,
      width: width,
      controller: controller,
    );
  }
}