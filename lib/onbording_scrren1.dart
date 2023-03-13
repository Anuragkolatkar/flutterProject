// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({
    super.key,
  });

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  // ignore: non_constant_identifier_names
  late PageController _pageController;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: PageView.builder(
              itemCount: demo_data.length,
              controller: _pageController,
              // ignore: avoid_types_as_parameter_names,
              itemBuilder: (context, index) => OnbordContent(
                image: demo_data[index].image,
                title: demo_data[index].title,
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 125,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        _pageController.previousPage(
                            duration: Duration(microseconds: 300),
                            curve: Curves.ease);
                        //OnPressed Logic
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      label: const Text(
                        "Previous",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 218, 32, 32)),
                    ),
                  ),
                  SizedBox(
                    width: 125,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        _pageController.nextPage(
                            duration: Duration(microseconds: 300),
                            curve: Curves.ease);
                        //OnPressed Logic
                      },
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      label: const Text("Next",
                          style: TextStyle(color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 218, 32, 32)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Onbord {
  final String image, title;
  Onbord({
    required this.image,
    required this.title,
  });
}

final List<Onbord> demo_data = [
  Onbord(image: "assets/undraw1.png", title: "Onbord_Scrren 1"),
  Onbord(image: "assets/undraw2.png", title: "Onbord_Scrren 2"),
  Onbord(image: "assets/undraw3.png", title: "Onbord_Scrren 3"),
];

class OnbordContent extends StatelessWidget {
  const OnbordContent({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);
  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          height: 400,
        ),
        Text(title,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ))
      ],
    );
  }
}
