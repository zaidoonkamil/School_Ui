import 'package:flutter/material.dart';
import 'package:introduction_slider/source/presentation/pages/introduction_slider.dart';
import 'package:introduction_slider/source/presentation/widgets/buttons.dart';
import 'package:introduction_slider/source/presentation/widgets/dot_indicator.dart';
import 'package:introduction_slider/source/presentation/widgets/introduction_slider_item.dart';
import 'package:school_app/view/login.dart';
import 'package:school_app/widgets/welcome_buttom.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 16.0,right: 16,bottom: 16,top: 16),
      child: IntroductionSlider(
        items: [
          IntroductionSliderItem(
            logo: Image.asset(
              'assets/images/img.png',
              scale: 3,
            ),
            title: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text("مرحبا بك في مدرستي",
                    style: TextStyle(
                        fontSize: 20, color: Theme.of(context).primaryColor)),
                const SizedBox(
                  height: 20,
                ),
                 const Text(
                       "Welcome as you learn a world changing skill to get a better job.",
                   textAlign: TextAlign.center,
                 ),
              ],
            ),
          ),
          IntroductionSliderItem(
            logo: Image.asset(
              'assets/images/img.png',
              scale: 3,
            ),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text("مرحبا بك في مدرستي",
                    style: TextStyle(
                        fontSize: 20, color: Theme.of(context).primaryColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                    "Welcome as you learn a world changing skill to get a better job.",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          IntroductionSliderItem(
            logo: Image.asset(
              'assets/images/img.png',
              scale: 3,
            ),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text("مرحبا بك في مدرستي",
                    style: TextStyle(
                        fontSize: 20, color: Theme.of(context).primaryColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                    "Welcome as you learn a world changing skill to get a better job.",
                  textAlign: TextAlign.center,

                ),
              ],
            ),
          ),
        ],
        done: const Done(
          child: WelcomeBottom(
            text: 'التالي',
          ),
          home: LoginScreen(),
        ),
        next: const Next(
            child: WelcomeBottom(
          text: 'التالي',
        )),
        back: const Back(
            child: WelcomeBottom(
          text: 'الرجوع',
        )),
        dotIndicator: DotIndicator(
            unselectedColor: const Color(0xFFF3EFE0),
            selectedColor: Theme.of(context).primaryColor),
      ),
    ));
  }
}
