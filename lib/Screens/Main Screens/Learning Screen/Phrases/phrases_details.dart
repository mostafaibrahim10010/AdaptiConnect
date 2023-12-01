import 'package:flutter/material.dart';

import '../../../../Models/Learning Screen Model/phrases_model.dart';


class PhrasesDetailsScreen extends StatefulWidget {
  final PhrasesDataModel data;

  const PhrasesDetailsScreen({Key? key, required this.data}) : super(key: key);

  @override
  State<PhrasesDetailsScreen> createState() => _PhrasesDetailsScreenState();
}

class _PhrasesDetailsScreenState extends State<PhrasesDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'ASL Learning',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Hero(
                  tag: widget.data.imageName,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage(
                              widget.data.imageName,
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
              )),
        ],
      ),
    );
  }
}
