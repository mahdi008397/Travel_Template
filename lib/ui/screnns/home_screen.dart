import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_template/ui/screnns/place_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PlaceScreen()));
                      },
                      child: const Text(
                        "Hi, Mahdi 👋",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Color.fromRGBO(47, 47, 47, 1),
                          fontSize: 30,
                        ),
                      ),
                    ),
                    const Text(
                      "Explore the world",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(136, 136, 136, 1),
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    child: Image.asset('assets/images/avatar.jpg'),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SizedBox(
              height: 58,
              child: TextField(
                textAlign: TextAlign.left,
                keyboardType: TextInputType.text,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  color: Color.fromRGBO(136, 136, 136, 1),
                ),
                decoration: InputDecoration(
                  prefix: const SizedBox(
                    width: 20,
                  ),
                  suffixIcon: SizedBox(
                    width: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          RotatedBox(
                            quarterTurns: 1,
                            child: Container(
                              width: 32,
                              height: 2,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2,
                                    color:
                                        const Color.fromRGBO(210, 210, 210, 1)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Image.asset('assets/images/setting-ico.png'),
                        ],
                      ),
                    ),
                  ),
                  counterText: "",
                  hintText: 'Search places',
                  hintTextDirection: TextDirection.rtl,
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    color: Color.fromRGBO(136, 136, 136, 1),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromRGBO(136, 136, 136, 1),
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(0xFF4E5FF4),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Text(
                  "Popular places",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color.fromRGBO(47, 47, 47, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                  "View All",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color.fromRGBO(136, 136, 136, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30, left: 30),
              child: Row(
                children: [
                  Container(
                    height: 54,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(47, 47, 47, 1),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          blurRadius: 19,
                          spreadRadius: 0,
                          offset: Offset(0, 9),
                        ),
                      ],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Center(
                        child: Text(
                          'Most Viewed',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                    height: 54,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(251, 251, 251, 1),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Center(
                        child: Text(
                          'Most Ordered',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            color: Color.fromRGBO(197, 197, 197, 1),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                    height: 54,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(251, 251, 251, 1),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Center(
                        child: Text(
                          'Nearby',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            color: Color.fromRGBO(197, 197, 197, 1),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                    height: 54,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(251, 251, 251, 1),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Center(
                        child: Text(
                          'Latest',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            color: Color.fromRGBO(197, 197, 197, 1),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 270,
                    height: 405,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(217, 217, 217, 1),
                      image: DecorationImage(
                          image: AssetImage('assets/images/img-1.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, top: 10),
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(50)),
                                child: BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaY: 15, sigmaX: 15),
                                  child: Container(
                                    width: 44,
                                    height: 44,
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(29, 29, 29, 0.4),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                          'assets/images/like-ico.png'),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 25),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaY: 15, sigmaX: 15),
                              child: Container(
                                width: 224,
                                height: 75,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(29, 29, 29, 0.4),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      children: [
                                        const Row(
                                          children: [
                                            Text(
                                              'Mount Fuji,',
                                              style: TextStyle(
                                                fontFamily: 'Roboto',
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 18,
                                              ),
                                            ),
                                            Text(
                                              ' Tokyo',
                                              style: TextStyle(
                                                fontFamily: 'Roboto',
                                                color: Color.fromRGBO(
                                                    202, 200, 200, 1),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                                'assets/images/point-ico.png'),
                                            const Text(
                                              '  Tokyo, Japan',
                                              style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(
                                                      202, 200, 200, 1)),
                                            ),
                                            const Spacer(),
                                            const Icon(
                                              Icons.star_border_rounded,
                                              color: Color.fromRGBO(
                                                  202, 200, 200, 1),
                                            ),
                                            const Text(
                                              '4.8',
                                              style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(
                                                      202, 200, 200, 1)),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PlaceScreen()));
                    },
                    child: Hero(
                      tag: 'assets/images/img-2.png',
                      child: Container(
                        width: 270,
                        height: 405,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 1),
                          image: DecorationImage(
                              image: AssetImage('assets/images/img-2.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 10, top: 10),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(50)),
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                          sigmaY: 15, sigmaX: 15),
                                      child: Container(
                                        width: 44,
                                        height: 44,
                                        decoration: const BoxDecoration(
                                          color:
                                              Color.fromRGBO(29, 29, 29, 0.4),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50)),
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                              'assets/images/like-ico.png'),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 25),
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                child: BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaY: 15, sigmaX: 15),
                                  child: Container(
                                    width: 224,
                                    height: 75,
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(29, 29, 29, 0.4),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          children: [
                                            const Row(
                                              children: [
                                                Text(
                                                  'Andes,',
                                                  style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                                Text(
                                                  ' South',
                                                  style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    color: Color.fromRGBO(
                                                        202, 200, 200, 1),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Image.asset(
                                                    'assets/images/point-ico.png'),
                                                const Text(
                                                  '  South, America',
                                                  style: TextStyle(
                                                      fontFamily: 'Roboto',
                                                      fontSize: 14,
                                                      color: Color.fromRGBO(
                                                          202, 200, 200, 1)),
                                                ),
                                                const Spacer(),
                                                const Icon(
                                                  Icons.star_border_rounded,
                                                  color: Color.fromRGBO(
                                                      202, 200, 200, 1),
                                                ),
                                                const Text(
                                                  '4.5',
                                                  style: TextStyle(
                                                      fontFamily: 'Roboto',
                                                      fontSize: 14,
                                                      color: Color.fromRGBO(
                                                          202, 200, 200, 1)),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: NavigationBar(
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          elevation: 0,
          destinations: [
            Image.asset('assets/images/home-ico.png'),
            Image.asset('assets/images/time-ico.png'),
            Image.asset('assets/images/heart-ico.png'),
            Image.asset('assets/images/profile.png'),
          ],
        ),
      ),
    );
  }
}
