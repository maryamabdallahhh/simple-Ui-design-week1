import 'package:flutter/material.dart';

class ListDesings extends StatefulWidget {
  const ListDesings({super.key});

  @override
  State<ListDesings> createState() => _ListDesingsState();
}

class _ListDesingsState extends State<ListDesings> {
  final list = const [
    'lib/images/pic1.jpg',
    'lib/images/pic2.jpg',
    'lib/images/pic3.jpg',
    'lib/images/pic4.jpg',
    'lib/images/pic5.jpg',
    'lib/images/pic6.jpg',
  ];
  final rate = const [4.7, 4.8, 4.5, 4.1, 4.5, 4.1];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: list.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 250,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10),
        itemBuilder: (context, index) {
          return myCard(image: list[index], rate: rate[index]);
        });
  }
}

Widget myCard({required String image, required double rate}) {
  return Card(
    clipBehavior: Clip.antiAliasWithSaveLayer,
    color: Colors.white,
    elevation: 3,
    child: Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Aya Ahmed ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Icon(
                          Icons.verified,
                          size: 17,
                          color: Colors.blue[700],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.work,
                          color: Colors.purple[300],
                          size: 15,
                        ),
                        const Text(
                          ' Exp: 3years',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(7)),
                      child: Text(
                        'interior Design',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600]),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Text(
                      "$rate",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      ' ⭐',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      '(99+)',
                      style: TextStyle(color: Colors.grey[500], fontSize: 10),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Icon(
                  size: 18,
                  Icons.favorite_rounded,
                  color: Colors.red[800],
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
