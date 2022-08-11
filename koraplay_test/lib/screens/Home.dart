import 'package:flutter/material.dart';
import 'package:koraplay_test/color.dart';
import 'package:stacked_notification_cards/stacked_notification_cards.dart';
import 'package:tcard/tcard.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final preferredSize = const Size.fromHeight(50);
  final _textController = TextEditingController();

  Widget _rowItemBuilder(BuildContext context, int index) {
    String text = '';
    switch (index) {
      case 0:
        text = 'Dentist';
        break;
      case 1:
        text = 'Heart Surgeon';
        break;
      case 2:
        text = 'Bone Surgeon';
        break;
      case 3:
        text = 'Dentist';
        break;
      case 4:
        text = 'Dentist';
        break;
      case 5:
        text = 'Dentist';
        break;
      case 6:
        text = 'Dentist';
        break;
      case 7:
        text = 'Dentist';
        break;
      case 8:
        text = 'Dentist';
        break;
      case 9:
        text = 'Dentist';
        break;
    }
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Card(
          color: primaryColorVariant,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                text,
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.w100),
              ),
            ),
          ),
        ));
  }

  List<Widget> cards = List.generate(
    5,
    (index) => Card(
      shape: RoundedRectangleBorder(
        side: const BorderSide(
            color: Colors.transparent, width: 1, style: BorderStyle.none),
        borderRadius: BorderRadius.circular(24),
      ),
      color: primaryColor,
      child: SizedBox(
        width: double.infinity,
        height: 150,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
          child: Flex(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              direction: Axis.vertical,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: const Image(
                                image: AssetImage('asset/profile1.jpg'),
                                fit: BoxFit.fitHeight,
                                height: 33,
                                width: 33,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Text(
                                'Dr. John Doe',
                                style: TextStyle(
                                  color: white,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Tooth specialist',
                                style: TextStyle(
                                    color: white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          color: white,
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        color: whiteVariant,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          child: Center(
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.calendar_month,
                                  color: white,
                                  size: 15,
                                ),
                                Text('sep 18,2022',
                                    style: TextStyle(color: white)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        color: whiteVariant,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          child: Center(
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.access_time,
                                  color: white,
                                  size: 15,
                                ),
                                Text('(11 Am - 3 Pm)',
                                    style: TextStyle(color: white)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ]),
        ),
      ),
    ),
  );

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
                    height: 33,
                    width: 33,
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
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Upcoming Appointments',
                  style: TextStyle(
                      color: black, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'See all',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                )
              ],
            ),
          ),
          TCard(
            cards: cards,
            size: const Size(double.infinity, 160),
            lockYAxis: true,
            onForward: (int, swipeIfo) {
              setState(() {
                cards.add(cards.first);
              });
            },
            onBack: (int, swipeIfo) {
              setState(() {
                cards.add(cards.first);
              });
            },
          ),
          Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: TextFormField(
                        controller: _textController,
                        textAlign: TextAlign.left,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                          fillColor: primaryColorVariant,
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                          filled: true,
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.grey),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                        )),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: primaryColorVariant),
                    child: IconButton(
                      icon: const Icon(Icons.menu),
                      onPressed: () {},
                    ),
                  )
                ],
              )),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Category',
                  style: TextStyle(
                      color: black, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'See all',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: _rowItemBuilder,
              scrollDirection: Axis.horizontal,
              itemCount:10,
            ),
          )
        ],
      ),
    );
  }
}

class CardView extends StatelessWidget {
  const CardView({Key? key, String? text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CardExamplesApp extends StatelessWidget {
  const CardExamplesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Card Examples')),
        body: Column(
          children: const <Widget>[
            Spacer(),
            ElevatedCardExample(),
            FilledCardExample(),
            OutlinedCardExample(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

/// An example of the elevated card type.
///
/// The default settings for [Card] will provide an elevated
/// card matching the spec:
///
/// https://m3.material.io/components/cards/specs#a012d40d-7a5c-4b07-8740-491dec79d58b
class ElevatedCardExample extends StatelessWidget {
  const ElevatedCardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        child: SizedBox(
          width: 300,
          height: 100,
          child: Center(child: Text('Elevated Card')),
        ),
      ),
    );
  }
}

/// An example of the filled card type.
///
/// To make a [Card] match the filled type, the default elevation and color
/// need to be changed to the values from the spec:
///
/// https://m3.material.io/components/cards/specs#0f55bf62-edf2-4619-b00d-b9ed462f2c5a
class FilledCardExample extends StatelessWidget {
  const FilledCardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        color: Theme.of(context).colorScheme.surfaceVariant,
        child: const SizedBox(
          width: 300,
          height: 100,
          child: Center(child: Text('Filled Card')),
        ),
      ),
    );
  }
}

/// An example of the outlined card type.
///
/// To make a [Card] match the outlined type, the default elevation and shape
/// need to be changed to the values from the spec:
///
/// https://m3.material.io/components/cards/specs#0f55bf62-edf2-4619-b00d-b9ed462f2c5a
class OutlinedCardExample extends StatelessWidget {
  const OutlinedCardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: const SizedBox(
          width: 300,
          height: 100,
          child: Center(child: Text('Outlined Card')),
        ),
      ),
    );
  }
}
