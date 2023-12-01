import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class QuizMainScreen extends StatefulWidget {
  const QuizMainScreen({Key? key}) : super(key: key);

  @override
  State<QuizMainScreen> createState() => _QuizMainScreenState();
}

class _QuizMainScreenState extends State<QuizMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'ASL Quiz',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                height: 200,
                child: Image.asset('assets/Others/choose.png'),
              ),
              const SizedBox(
                height: 25,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 150,
                        height: 175,
                        child: ElevatedButton(
                          onPressed: () {
                            launcher.launchUrl(
                              Uri.parse(
                                  'https://forms.gle/P2BtXW2e9TP9ymmw5'),
                              mode: launcher.LaunchMode.externalApplication,
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: Colors.black),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 134,
                                width: 134,
                                child: Image.asset(
                                    'assets/Levels/icons8-1-64.png'),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text('Level One'),
                              const SizedBox(
                                height: 5,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        height: 175,
                        child: ElevatedButton(
                          onPressed: () {
                            launcher.launchUrl(
                              Uri.parse(
                                  'https://forms.gle/9ZfzxrsgLALLaomh8'),
                              mode: launcher.LaunchMode.externalApplication,
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: Colors.black),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 134,
                                width: 134,
                                child: Image.asset(
                                    'assets/Levels/icons8-2-64.png'),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text('Level Two'),
                              const SizedBox(
                                height: 5,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 150,
                        height: 175,
                        child: ElevatedButton(
                          onPressed: () {
                            launcher.launchUrl(
                              Uri.parse(
                                  'https://forms.gle/Vy6J1YJfpufbxULG7'),
                              mode: launcher.LaunchMode.externalApplication,
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: Colors.black),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 134,
                                width: 134,
                                child: Image.asset(
                                    'assets/Levels/icons8-3-64.png'),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text('Level Three'),
                              const SizedBox(
                                height: 5,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        height: 175,
                        child: ElevatedButton(
                          onPressed: () {
                            launcher.launchUrl(
                              Uri.parse(
                                  'https://forms.gle/PYUm6CmxK3UAzV7E9'),
                              mode: launcher.LaunchMode.externalApplication,
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: Colors.black),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 134,
                                width: 134,
                                child: Image.asset(
                                    'assets/Levels/icons8-1-64.png'),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text('Level 4'),
                              const SizedBox(
                                height: 5,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
