import 'package:adapiconnect/Screens/Main%20Screens/Learning%20Screen/Learning_Home.dart';
import 'package:adapiconnect/Screens/Main%20Screens/Translating%20Screens/ML%20Translating/ML_Screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;
import 'Main Screens/Quiz Screens/quiz_main_screen.dart';
import 'Main Screens/Speech To Text Screen/speech_to_text.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Home Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: SizedBox(
        height: 67,
        width: 67,
        child: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            launcher.launchUrl(
              Uri.parse(
                  'mailto:adapticonnect@gmail.com?subject=For inquiries about the AdaptiConnect&body=I want to ask about....'),
              mode: launcher.LaunchMode.externalApplication,
            );
          },
          child: const Icon(Icons.chat),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            height: 41,
                            width: 160,
                            child: Text(
                              "Hi, User",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 35,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                          SizedBox(
                              height: 41,
                              width: 41,
                              child: Image.asset("assets/Others/hello.png"))
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                          height: 38,
                          width: 197,
                          child: Text(
                              "Embrace inclusivity with our app for seamless communication.")),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    height: 120,
                    width: 104,
                    child: SizedBox(
                        height: 200,
                        width: 280,
                        child: Image.asset(
                            "assets/Others/3D_Avatar.png")),
                  )
                ],
              ),
              const SizedBox(
                height: 55,
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
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                const MLScreen()));
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
                                child: Image.asset('assets/Others/abc.png'),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text('ASL Translator'),
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
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const QuizMainScreen()));
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
                                child: Image.asset('assets/Others/sign-language.png'),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text('ASL Quiz'),
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
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const SpeechScreen()));
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
                                child: Image.asset('assets/Others/speech-to-text.png'),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text('Speech To Text'),
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
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const LearningTabBars()));
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
                                    'assets/Others/Learn Sign Language.png'),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text('Learn ASL'),
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
