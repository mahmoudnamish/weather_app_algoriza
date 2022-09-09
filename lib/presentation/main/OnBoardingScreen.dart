import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:weather_algoriza/presentation/main/widgets/onbording_widget.dart';
import '../resources/component.dart';
import '../resources/navigation_manager.dart';
import '../resources/text_manager.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  bool islast = false;
  var pageviewc = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MaterialButton(
                  onPressed: () {
                    home(context);
                  },
                  child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.yellow[100],
                      ),
                      child: const Text(
                        'Skip',
                        style: TextStyle(fontSize: 18),
                      )),
                ),
              ],
            ),
            Expanded(
              child: PageView.builder(
                onPageChanged: (int index) {
                  setState(() {
                    if (index == modele.length - 1) {
                      islast = true;
                    } else {
                      islast = false;
                    }
                  });
                },
                controller: pageviewc,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => bordinditem(modele[index]),
                itemCount: modele.length,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SmoothPageIndicator(
                effect: SwapEffect(
                  dotColor: Colors.grey,
                  activeDotColor: Colors.orangeAccent.withOpacity(.9),
                  radius: 6,
                  dotHeight: 6,
                  dotWidth: 18,
                ),
                controller: pageviewc,
                count: modele.length),
            const SizedBox(
              height: 18,
            ),
            DefultBottom(
                width: double.infinity,
                background: Colors.teal,
                onpresse: () {
                  if (islast) {
                    home(context);
                  } else {
                    pageviewc.nextPage(
                      duration: const Duration(milliseconds: 750),
                      curve: Curves.fastLinearToSlowEaseIn,
                    );
                  }
                },
                text: TextManager.started),
          ],
        ),
      ),
    ));
  }
}
