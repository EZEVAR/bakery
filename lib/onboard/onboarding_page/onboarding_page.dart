import 'package:bakery/pages/product.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../../services/preference/shared_prefence.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  static const name = 'onboard';

  @override
  Widget build(BuildContext context) {
    final onboardingPrefs = OnboardingPreference();

    return FutureBuilder<bool>(
        future: onboardingPrefs.isFirstTimeLaunch(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!) {
              return IntroductionScreen(
                pages: [
                  PageViewModel(
                    title: 'BIENVENIDO A NUESTRA PASTELERIA',
                    body: 'Disfrute de los mejores productos. ',
                    image: buildImage('assets/onboard1bg.png'),
                    decoration: buildDecoration(),
                  ),
                  PageViewModel(
                    title: 'VELOZ DELIVERY',
                    body: 'Haga su pedido y lo llevaremos hasta su puerta.',
                    image: buildImage('assets/onboard2bg.png'),
                    decoration: buildDecoration(),
                  ),
                  PageViewModel(
                    title: 'DISFRUTE DE LOS PRODUCTOS',
                    body: 'Deleitese con los mejores postres todos los dias.',
                    image: buildImage('assets/onboard4bg.png'),
                    decoration: buildDecoration(),
                  ),
                ],
                next: const Icon(
                  Icons.navigate_next,
                  size: 40,
                  color: Colors.red,
                ),
                done: const Text('Done',
                    style: TextStyle(color: Colors.red, fontSize: 20)),
                onDone: () {
                  onboardingPrefs.setFirstTimeLaunch(false);
                  goTopage(context);
                },
                showSkipButton: true,
                skip: const Text(
                  'Skip',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                onSkip: () {
                  onboardingPrefs.setFirstTimeLaunch(false);
                  goTopage(context);
                },
                dotsDecorator: getDotDecoration(),
                animationDuration: 1000,
                globalBackgroundColor: Colors.purple.shade50,
              );
            } else {
              return const MyProductPage();
            }
          } else {
            return const CircularProgressIndicator();
          }
        });
  }

  DotsDecorator getDotDecoration() => DotsDecorator(
      color: Colors.grey,
      size: const Size(10, 10),
      activeColor: Colors.redAccent,
      activeSize: const Size(22, 10),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ));

  void goTopage(BuildContext context) => context.go('/product');
  Widget buildImage(String path) => Center(child: Image.asset(path));

  PageDecoration buildDecoration() => PageDecoration(
        titleTextStyle: const TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.red),
        bodyTextStyle: const TextStyle(fontSize: 20),
        pageColor: Colors.purple.shade50,
        imagePadding: const EdgeInsets.all(0),
      );

  static page() {}
}
