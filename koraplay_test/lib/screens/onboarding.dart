import 'package:flutter/material.dart';
import 'package:koraplay_test/color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbardingPage extends StatefulWidget {
  const OnbardingPage({Key? key}) : super(key: key);

  @override
  State<OnbardingPage> createState() => _OnbardingPageState();
}

class _OnbardingPageState extends State<OnbardingPage> {
  final controller = PageController();
  final controller2 = PageController();
  int manualController = -1;

  Widget _itemBuilder2(BuildContext context, int index) => Padding(
        padding:
            const EdgeInsets.only(top: 60, bottom: 30, left: 60, right: 60),
        child: Column(
          children: const [
            Text(
              'Perfect Healthcare Solution',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Text(
              'Find a specialist that you only need on a consulting application',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black45),
            )
          ],
        ),
      );

  Widget _itemBuilder1(BuildContext context, int index) {
    Color color;
    switch (index % 10) {
      case 2:
        color = Colors.red;
        break;
      case 1:
        color = Colors.blue;
        break;
      default:
        color = Colors.green;
    }
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('asset/doctor.jpg'), fit: BoxFit.cover)),
    );
  }

  @override
  void initState() {
    controller.addListener(() {
      if (manualController == 1) {
        controller2.jumpTo(controller.offset);
      }
    });

    controller2.addListener(() {
      if (manualController == 2) {
        controller.jumpTo(controller2.offset);
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      body: Container(
        color: primaryColor,
        padding: const EdgeInsets.only(bottom: 120),
        child: Stack(
          children: [
            GestureDetector(
              onTapDown: (tapDownDetails) {
                manualController = 1;
                setState(() {});
              },
              onTapUp: (tapUpDetails) {
                manualController = -1;
                setState(() {});
              },
              child: PageView.builder(
                itemBuilder: _itemBuilder1,
                controller: controller,
                itemCount: 3,
              ),
            ),
            Positioned(
                bottom: 0.0,
                right: 0.0,
                left: 0.0,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: 200,
                  decoration: const BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.elliptical(400, 120),
                          topRight: Radius.elliptical(400, 120))),
                  child: GestureDetector(
                    onTapDown: (tapDownDetails) {
                      manualController = 2;
                      setState(() {});
                    },
                    onTapUp: (tapUpDetails) {
                      manualController = -1;
                      setState(() {});
                    },
                    child: PageView.builder(
                      itemBuilder: _itemBuilder2,
                      controller: controller2,
                      itemCount: 3,
                    ),
                  ),
                ))
          ],
        ),
      ),
      bottomSheet: Container(
          color: white,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Center(
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: const WormEffect(
                        dotHeight: 10,
                        dotWidth: 10,
                        activeDotColor: primaryColor),
                  ),
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateAccount()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 15.0,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'Get Started',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              )
            ],
          )));
}
