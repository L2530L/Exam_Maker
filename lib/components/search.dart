import 'package:flutter/material.dart';


SearchBar searchBar() {
    return SearchBar(
            constraints: BoxConstraints(maxWidth: 250),
            padding: WidgetStatePropertyAll(EdgeInsets.all(10)),
            trailing: <Widget>[Icon(Icons.search)],
          );
  }