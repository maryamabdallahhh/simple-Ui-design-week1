import 'package:flutter/material.dart';

class MySearch extends StatefulWidget {
  const MySearch({super.key});

  @override
  State<MySearch> createState() => _MySearchState();
}

class _MySearchState extends State<MySearch> {
  @override
  Widget build(BuildContext context) {
    return const SearchBar(
      elevation: WidgetStatePropertyAll(5),
      backgroundColor: WidgetStatePropertyAll(Colors.white),
      leading: Icon(
        size: 30,
        Icons.search,
        color: Colors.black,
      ),
      hintText: 'Search for desingers, categories...',
      hintStyle: WidgetStatePropertyAll(TextStyle(color: Colors.grey)),
    );
  }
}
