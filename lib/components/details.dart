import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final List<DropdownMenuEntry> entries;
  final String label;
  final TextEditingController controller;

  const Details({
    super.key,
    required this.label,
    required this.entries,
    required this.controller
  });

  check(value){
    
  }

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      label: Text(label),
      dropdownMenuEntries: entries,
      menuHeight: 234,
      width: 250,
      controller: controller,
    );
  }
}