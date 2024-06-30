import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    double screenH = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenW,
        height: screenH,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(1, 114, 178, 1),
              Color.fromRGBO(0, 22, 69, 1),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Travel',
                  style: TextStyle(
                    fontFamily: 'Lobster',
                    fontSize: 44,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Image.asset('assets/images/app-icon.png'),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Find You Dream',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(232, 232, 232, 1),
                  ),
                )
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Destination With Us',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(232, 232, 232, 1),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
