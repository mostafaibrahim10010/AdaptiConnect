import 'package:adapiconnect/Screens/Main%20Screens/Learning%20Screen/Numbers/numbers_learning_screen.dart';
import 'package:adapiconnect/Screens/Main%20Screens/Learning%20Screen/Phrases/phrases_learning_screen.dart';
import 'package:flutter/material.dart';

import 'Letters/learning_screen.dart';

class LearningTabBars extends StatelessWidget {
  const LearningTabBars({Key? key}) : super(key: key);

// build the app
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.book_online)),
                Tab(icon: Icon(Icons.numbers)),
                Tab(icon: Icon(Icons.book_rounded)),
              ],
            ), // TabBar
            title: const Text('ASL Learning'),
            backgroundColor: Colors.black,
          ), // AppBar
          body: const TabBarView(

            children: [
              LearningScreen(),
              NumbersLearningScreen(),
              PhrasesLearningScreen()
            ],
          ), // TabBarView
        ));
  }
}
