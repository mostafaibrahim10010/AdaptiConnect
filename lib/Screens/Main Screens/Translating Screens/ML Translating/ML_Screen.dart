import 'package:adapiconnect/Screens/Main%20Screens/Translating%20Screens/ML%20Translating/camera_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tflite/flutter_tflite.dart';

class MLScreen extends StatefulWidget {
  const MLScreen({Key? key}) : super(key: key);

  @override
  State<MLScreen> createState() => _MLScreenState();
}

class _MLScreenState extends State<MLScreen> {
  loadmodel() async {
    Tflite.loadModel(
      model: "assets/model_unquant.tflite",
      labels: "assets/labels.txt",
    );
  }

  @override
  void initState() {
    super.initState();

    loadmodel();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset('assets/Others/artificial-intelligence.png'),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              color: Colors.black,
              child: Container(
                margin: const EdgeInsets.all(20),
                height: 50,
                width: w,
                child: MaterialButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CameraScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Start Detecting',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
