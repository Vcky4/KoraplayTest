import 'package:flutter/material.dart';
import 'package:koraplay_test/color.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final preferredSize = const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: preferredSize,
        child: Padding(
          padding: const EdgeInsets.only(top: 30, right: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: const Image(
                    image: AssetImage('asset/profile1.jpg'),
                    fit: BoxFit.fitHeight,
                    height: 30,
                    width: 30,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'Welcome back',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'Nazmul',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ]),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: primaryColorVariant),
              child: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {},
              ),
            ),
          ]),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Upcoming Appointments',
                  style: TextStyle(
                      color: black, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'See all',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
