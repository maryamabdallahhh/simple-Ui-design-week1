import 'package:desing/search.dart';
import 'package:flutter/material.dart';
import 'categories.dart';
import 'listtile_designes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //appbar
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Afternoon, 🌙',
              style: TextStyle(
                //fontWeight: FontWeight.bold,
                color: Colors.grey[900],
                fontSize: 14,
              ),
            ),
            const Text(
              'Maryam Abdallah',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      //body
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const MySearch(),
            const SizedBox(
              height: 30,
            ),
            const Categories(),
            const SizedBox(
              height: 30,
            ),
            myText(text1: 'Top-Related Designers 🖌️'),
            Divider(
              color: Colors.grey[200],
              height: 25,
            ),
            const Expanded(child: ListDesings()),
          ],
        ),
      ),
    );
  }
}

Widget myText({required String? text1}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "$text1",
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      Row(
        children: [
          Text(
            'View all',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue[800],
            ),
          ),
          Icon(
            Icons.arrow_right_alt_outlined,
            color: Colors.blue[800],
          ),
        ],
      )
    ],
  );
}
