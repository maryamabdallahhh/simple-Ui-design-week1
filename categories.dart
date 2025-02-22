import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final list = const [
    'industrial Design',
    'interior Design',
    'Graphic Design',
    'Design',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Categories',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 47,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              width: 10,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return mybutton(list[index]);
            },
          ),
        )
      ],
    );
  }
}

ElevatedButton mybutton(String mytext) {
  return ElevatedButton(
    style: const ButtonStyle(
      side: WidgetStatePropertyAll(
        BorderSide(width: .1),
      ),
      backgroundColor: WidgetStatePropertyAll(Colors.white),
    ),
    onPressed: () {},
    child: Text(
      mytext,
      style: const TextStyle(color: Colors.black),
    ),
  );
}
