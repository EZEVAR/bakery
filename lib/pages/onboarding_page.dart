import 'package:bakery/login/login.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);
  static const name = 'onboard';

  @override
  Widget build(BuildContext context) {
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
      done:
          const Text('Done', style: TextStyle(color: Colors.red, fontSize: 20)),
      onDone: () => goToHome(context),
      showSkipButton: true,
      skip: const Text(
        'Skip',
        style: TextStyle(color: Colors.red, fontSize: 20),
      ), //by default, skip goes to the last page
      onSkip: () => goToHome(context),
      dotsDecorator: getDotDecoration(),
      animationDuration: 1000,
      globalBackgroundColor: Colors.purple.shade50,
    );
  }

  DotsDecorator getDotDecoration() => DotsDecorator(
      color: Colors.grey,
      size: const Size(10, 10),
      activeColor: Colors.redAccent,
      activeSize: const Size(22, 10),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ));
  void goToHome(BuildContext context) => Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (_) => const LoginPage()));

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
