import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../Models/Learning Screen Model/phrases_model.dart';
import 'phrases_details.dart';

class PhrasesLearningScreen extends StatefulWidget {
  const PhrasesLearningScreen({Key? key}) : super(key: key);

  @override
  State<PhrasesLearningScreen> createState() => _PhrasesLearningScreenState();
}

class _PhrasesLearningScreenState extends State<PhrasesLearningScreen> {
  late PageController _pageController;
  final int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController =
        PageController(initialPage: _currentPage, viewportFraction: 0.8);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 75,
            ),
            AspectRatio(
              aspectRatio: 0.85,
              child: PageView.builder(
                  itemCount: dataList.length,
                  physics: const ClampingScrollPhysics(),
                  controller: _pageController,
                  itemBuilder: (context, index) {
                    return carouselView(index);
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Widget carouselView(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 0.0;
        if (_pageController.position.haveDimensions) {
          value = index.toDouble() - (_pageController.page ?? 0);
          value = (value * 0.038).clamp(-1, 1);
          print("value $value index $index");
        }
        return Transform.rotate(
          angle: pi * value,
          child: carouselCard(dataList[index]),
        );
      },
    );
  }

  Widget carouselCard(PhrasesDataModel data) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Hero(
              tag: data.imageName,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PhrasesDetailsScreen(data: data)));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                      image: DecorationImage(
                          image: AssetImage(
                            data.imageName,
                          ),
                          fit: BoxFit.fill),
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 4,
                            color: Colors.black26)
                      ]),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
