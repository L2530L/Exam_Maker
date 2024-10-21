import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Details extends StatelessWidget {
  final List<DropdownMenuEntry<int>> entries;
  final String label;
  final TextEditingController controller;
  final ValueChanged<int?> onSelected;
  final int? selectedValue;
  final double width;

  const Details({
    super.key,
    required this.label,
    required this.entries,
    required this.controller,
    required this.onSelected,
    this.selectedValue,
    this.width = 250,
  });

  // check(value) {}

  @override
  Widget build(BuildContext context) {
    String dropdownLabel = (selectedValue != null && selectedValue! > 0)
        ? entries.firstWhere((entry) => entry.value == selectedValue).label
        : label;

    return DropdownMenu(
      label: Text(dropdownLabel),
      dropdownMenuEntries: entries,
      menuHeight: 234,
      width: width,
      controller: controller,
      onSelected: (value) {
        onSelected(value);
      },
    );
  }
}
