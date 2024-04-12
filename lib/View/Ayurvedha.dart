import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:longevity_life/Utility/footer.dart';

import '../Public/constant.dart';
import '../Utility/header.dart';

class Ayurvedha extends StatefulWidget {
  const Ayurvedha({super.key});

  @override
  State<Ayurvedha> createState() => _AyurvedhaState();
}

class _AyurvedhaState extends State<Ayurvedha> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool mobile = width < 600;
    return Scaffold(
      body: SingleChildScrollView(
        child: mobile
            ? Column(children: [
                const Header(),
                Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: width,
                      height: 400,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/ayurbanner.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -90,
                      // right: width - 0.10,
                      // left: width - 0.10,
                      child: Card(
                        color: CardColor.ayurvedha,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Container(
                            width: width * 0.80,
                            alignment: Alignment.center,
                            height: 180,
                            decoration: BoxDecoration(
                                color: CardColor.ayurvedha,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20))),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'GOAL OF THE TREATMENT  :  STRESS RELIEF',
                                    style: TextStyle(
                                      color: CardColor.txtColor,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    'REC. MINIMUM DURATION  :  7-14 DAYS',
                                    style: TextStyle(
                                      color: CardColor.txtColor,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    'DURATION OF TREATMENT  :  2 -4 Hours DAILY',
                                    style: TextStyle(
                                      color: CardColor.txtColor,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    'MEDITATION  :  INCLUDED',
                                    style: TextStyle(
                                      color: CardColor.txtColor,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ])),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 140),
                Container(
                  margin: const EdgeInsets.all(10),
                  width: width,
                  height: 400,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/ayurimage.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'AYURVEDHA',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.25,
                    color: CardColor.ayurvedha,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Ayurveda is considered to be the oldest system of health care, with literature going back 5000 years. Ayurveda helps a healthy person to maintain health, and a person with illnesses to regain health.',
                    style: TextStyle(height: 1.75),
                    textAlign: TextAlign.justify,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'An Ayurvedic treatment is not just a massage with ayurvedic oil. A massage provided with improper medicated oils based on different individual factors can cause problems at a later stage. Therefore, Ayurvedic treatment requires the expertise of a doctor to decide on treatments, the combination of oils and medicines, delivered by trained therapists.',
                    style: TextStyle(height: 1.75),
                    textAlign: TextAlign.justify,
                  ),
                ),
                const SizedBox(height: 50),
                Container(
                    margin: const EdgeInsets.all(10),
                    color: BoxColor.ayurvedha,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 25),
                    width: width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'PACKAGE DETAILS',
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            color: CardColor.ayurvedha,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Our packages are all-round carefree offers. They include all treatments and medications as part of the treatment plan, Spa full board, yoga, meditation and accommodation.',
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Text(
                          'PROVIDED THERAPY',
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            color: CardColor.ayurvedha,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 6,
                              height: 6,
                              decoration: const BoxDecoration(
                                  color: Colors.black, shape: BoxShape.circle),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'Herbal Medicine',
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 6,
                              height: 6,
                              decoration: const BoxDecoration(
                                  color: Colors.black, shape: BoxShape.circle),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'Detoxification Therapies',
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 6,
                              height: 6,
                              decoration: const BoxDecoration(
                                  color: Colors.black, shape: BoxShape.circle),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'Acupuncture',
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        )
                      ],
                    )),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.all(10),
                  color: BoxColor.ayurvedha,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                  width: width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'PARTICULARLY SUITABLE FOR',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: CardColor.ayurvedha,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Container(
                            width: 6,
                            height: 6,
                            decoration: const BoxDecoration(
                                color: Colors.black, shape: BoxShape.circle),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'Exhaustions',
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 6,
                            height: 6,
                            decoration: const BoxDecoration(
                                color: Colors.black, shape: BoxShape.circle),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'Muscular Tensions',
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 6,
                            height: 6,
                            decoration: const BoxDecoration(
                                color: Colors.black, shape: BoxShape.circle),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'Listnessness',
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 6,
                            height: 6,
                            decoration: const BoxDecoration(
                                color: Colors.black, shape: BoxShape.circle),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'General Weakness',
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 6,
                            height: 6,
                            decoration: const BoxDecoration(
                                color: Colors.black, shape: BoxShape.circle),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'Heaviness Of The Body',
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'INCLUDED',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: CardColor.ayurvedha,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: width * 0.25,
                                  width: width * 0.30,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: SvgPicture.asset(
                                        "assets/food.svg",
                                        height: width * 0.08,
                                        width: width * 0.10,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                SizedBox(
                                  height: width * 0.15,
                                  width: width * 0.30,
                                  child: const Text(
                                    'Nutrition Food',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: width * 0.25,
                                  width: width * 0.30,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: SvgPicture.asset(
                                      "assets/yoga.svg",
                                      height: width * 0.08,
                                      width: width * 0.10,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                SizedBox(
                                  height: width * 0.15,
                                  width: width * 0.30,
                                  child: const Text(
                                    'Beach Yoga',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: width * 0.25,
                                  width: width * 0.30,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: SvgPicture.asset(
                                      "assets/meditation.svg",
                                      height: width * 0.10,
                                      width: width * 0.10,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                SizedBox(
                                  height: width * 0.15,
                                  width: width * 0.30,
                                  child: const Text(
                                    'Sleepless-Meditation',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: width * 0.25,
                                  width: width * 0.30,
                                  child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: SvgPicture.asset(
                                        "assets/exercise.svg",
                                        height: width * 0.10,
                                        width: width * 0.10,
                                      )),
                                ),
                                const SizedBox(height: 5),
                                SizedBox(
                                  height: width * 0.15,
                                  width: width * 0.30,
                                  child: const Text(
                                    'Relaxation Exercises',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                Stack(
                  children: [
                    Container(
                      width: width > 600
                          ? width - 300
                          : width -
                              50, // Ensures the container fills the width of its parent
                      height: width > 600
                          ? 400
                          : 200, // Arbitrary height, adjust according to your needs
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              nutritiondining), // Specify the path to your image
                          fit: BoxFit
                              .cover, // Ensures the image covers the entire container
                        ),
                      ),
                    ),
                    Positioned(
                      bottom:
                          0, // Adjust this value based on your text container's expected half height
                      left: 0,
                      right: 0,
                      child: Container(
                        color: kred, // Assuming kbluebox is a predefined color
                        padding: const EdgeInsets.all(
                            8.0), // Adds padding inside the text container
                        child: Text(
                          "BOOK YOUR NUTRITION DINING",
                          textAlign: TextAlign
                              .center, // Centers the text inside the container
                          style: TextStyle(
                            color: Colors.white, // Text color
                            fontSize: width > 600
                                ? 24
                                : 12, // Text size, adjust as needed
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                const Footer(),
              ])
            //desktop view
            : Column(children: [
                const Header(),
                // Banner image .....................................................
                Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: width,
                      height: 700,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/ayurbanner.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -125,
                      // right: width - 0.10,
                      // left: width - 0.10,
                      child: Card(
                        color: CardColor.ayurvedha,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Container(
                            width: width * 0.80,
                            alignment: Alignment.center,
                            height: 250,
                            decoration: BoxDecoration(
                                color: CardColor.ayurvedha,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20))),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'GOAL OF THE TREATMENT  :  STRESS RELIEF',
                                    style: TextStyle(
                                      color: CardColor.txtColor,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    'REC. MINIMUM DURATION  :  7-14 DAYS',
                                    style: TextStyle(
                                      color: CardColor.txtColor,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    'DURATION OF TREATMENT  :  2 -4 Hours DAILY',
                                    style: TextStyle(
                                      color: CardColor.txtColor,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    'MEDITATION  :  INCLUDED',
                                    style: TextStyle(
                                      color: CardColor.txtColor,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ])),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 125),
                const SizedBox(height: 50),
                // spa image section ......................................................
                SizedBox(
                  width: width,
                  height: 700,
                  child: IntrinsicHeight(
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            width: width * 0.60,
                            height: 700,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/ayurimage.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(25),
                            width: width * 0.40,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'AYURVEDHA',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.25,
                                    color: CardColor.ayurvedha,
                                  ),
                                ),
                                const SizedBox(
                                  height: 75,
                                ),
                                const Text(
                                  'Ayurveda is considered to be the oldest system of health care, with literature going back 5000 years. Ayurveda helps a healthy person to maintain health, and a person with illnesses to regain health.',
                                  style: TextStyle(height: 1.75),
                                  textAlign: TextAlign.justify,
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                const Text(
                                  'An Ayurvedic treatment is not just a massage with ayurvedic oil. A massage provided with improper medicated oils based on different individual factors can cause problems at a later stage. Therefore, Ayurvedic treatment requires the expertise of a doctor to decide on treatments, the combination of oils and medicines, delivered by trained therapists.',
                                  style: TextStyle(height: 1.75),
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
                const SizedBox(height: 50),
                // Box content section ..................................................
                Container(
                    alignment: Alignment.center,
                    width: width * 0.80,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              color: BoxColor.ayurvedha,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 25),
                              width: width * 0.38,
                              height: 550,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'PACKAGE DETAILS',
                                    style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                      color: CardColor.ayurvedha,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text(
                                    'Our packages are all-round carefree offers. They include all treatments and medications as part of the treatment plan, Spa full board, yoga, meditation and accommodation.',
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Text(
                                    'PROVIDED THERAPY',
                                    style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                      color: CardColor.ayurvedha,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 6,
                                        height: 6,
                                        decoration: const BoxDecoration(
                                            color: Colors.black,
                                            shape: BoxShape.circle),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        'Herbal Medicine',
                                        style: TextStyle(fontSize: 18),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 6,
                                        height: 6,
                                        decoration: const BoxDecoration(
                                            color: Colors.black,
                                            shape: BoxShape.circle),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        'Detoxification Therapies',
                                        style: TextStyle(fontSize: 18),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 6,
                                        height: 6,
                                        decoration: const BoxDecoration(
                                            color: Colors.black,
                                            shape: BoxShape.circle),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        'Acupuncture',
                                        style: TextStyle(fontSize: 18),
                                      )
                                    ],
                                  )
                                ],
                              )),
                          Container(
                            color: BoxColor.ayurvedha,
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            width: width * 0.38,
                            height: 550,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'PARTICULARLY SUITABLE FOR',
                                  style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                    color: CardColor.ayurvedha,
                                  ),
                                ),
                                SizedBox(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 6,
                                            height: 6,
                                            decoration: const BoxDecoration(
                                                color: Colors.black,
                                                shape: BoxShape.circle),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Text(
                                            'Exhaustions',
                                            style: TextStyle(fontSize: 18),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            width: 6,
                                            height: 6,
                                            decoration: const BoxDecoration(
                                                color: Colors.black,
                                                shape: BoxShape.circle),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Text(
                                            'Muscular Tensions',
                                            style: TextStyle(fontSize: 18),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            width: 6,
                                            height: 6,
                                            decoration: const BoxDecoration(
                                                color: Colors.black,
                                                shape: BoxShape.circle),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Text(
                                            'Listnessness',
                                            style: TextStyle(fontSize: 18),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            width: 6,
                                            height: 6,
                                            decoration: const BoxDecoration(
                                                color: Colors.black,
                                                shape: BoxShape.circle),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Text(
                                            'General Weakness',
                                            style: TextStyle(fontSize: 18),
                                          )
                                        ],
                                      ),
                                      width < 650 && width > 600
                                          ? Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 6,
                                                  height: 6,
                                                  decoration:
                                                      const BoxDecoration(
                                                          color: Colors.black,
                                                          shape:
                                                              BoxShape.circle),
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                const Text(
                                                  'Heaviness Of The Body',
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                )
                                              ],
                                            )
                                          : Row(
                                              children: [
                                                Container(
                                                  width: 6,
                                                  height: 6,
                                                  decoration:
                                                      const BoxDecoration(
                                                          color: Colors.black,
                                                          shape:
                                                              BoxShape.circle),
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                const Text(
                                                  'Heaviness Of The Body',
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                )
                                              ],
                                            )
                                    ],
                                  ),
                                ),
                                Text(
                                  'INCLUDED',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: CardColor.ayurvedha,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: width * 0.050,
                                          width: width * 0.050,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            child: SvgPicture.asset(
                                              "assets/food.svg",
                                              height: width * 0.022,
                                              width: width * 0.022,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        SizedBox(
                                          height: width * 0.050,
                                          width: width * 0.050,
                                          child: const Text(
                                            'Nutrition Food',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: width * 0.050,
                                          width: width * 0.050,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            child: SvgPicture.asset(
                                              "assets/yoga.svg",
                                              height: width * 0.027,
                                              width: width * 0.027,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        SizedBox(
                                          height: width * 0.050,
                                          width: width * 0.050,
                                          child: const Text(
                                            'Beach Yoga',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: width * 0.050,
                                          width: width * 0.050,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            child: SvgPicture.asset(
                                              "assets/meditation.svg",
                                              height: width * 0.030,
                                              width: width * 0.030,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        SizedBox(
                                          height: width * 0.050,
                                          width: width * 0.050,
                                          child: const Text(
                                            'Sleepless-Meditation',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: width * 0.050,
                                          width: width * 0.050,
                                          child: CircleAvatar(
                                              backgroundColor: Colors.white,
                                              child: SvgPicture.asset(
                                                "assets/exercise.svg",
                                                height: width * 0.030,
                                                width: width * 0.030,
                                              )),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        SizedBox(
                                          height: width * 0.050,
                                          width: width * 0.050,
                                          child: const Text(
                                            'Relaxation Exercises',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ])),
                const SizedBox(height: 50),
                // food image section ...............................................

                const SizedBox(
                  height: 30,
                ),
                Stack(
                  children: [
                    Container(
                      width: width > 600
                          ? width - 300
                          : width -
                              50, // Ensures the container fills the width of its parent
                      height: width > 600
                          ? 400
                          : 200, // Arbitrary height, adjust according to your needs
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              nutritiondining), // Specify the path to your image
                          fit: BoxFit
                              .cover, // Ensures the image covers the entire container
                        ),
                      ),
                    ),
                    Positioned(
                      bottom:
                          0, // Adjust this value based on your text container's expected half height
                      left: 0,
                      right: 0,
                      child: Container(
                        color: CardColor
                            .ayurvedha, // Assuming kbluebox is a predefined color
                        padding: const EdgeInsets.all(
                            8.0), // Adds padding inside the text container
                        child: Text(
                          "BOOK YOUR NUTRITION DINING",
                          textAlign: TextAlign
                              .center, // Centers the text inside the container
                          style: TextStyle(
                            color: BoxColor.ayurvedha, // Text color
                            fontSize: width > 600
                                ? 24
                                : 12, // Text size, adjust as needed
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                const Footer(),
              ]),
      ),
    );
  }
}
