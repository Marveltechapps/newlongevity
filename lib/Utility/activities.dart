import 'package:flutter/material.dart';
import 'package:longevity_life/Public/constant.dart';

class Activities extends StatefulWidget {
  const Activities({super.key});

  @override
  State<Activities> createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  int selectedIndex = 0;
  final List<String> relaxationimg = [
    "assets/wellness_activities1.png",
    "assets/wellness_activities2.png",
    "assets/wellness_activities3.png",
    "assets/wellness_activities4.png",
    "assets/wellness_activities5.png",
  ];
  final List<String> relaxationtitle = [
    "Sunlight - Vitamin - D",
    "Pure Oxygen Intake - O2",
    "Beach Yoga / Walk",
    "Social Interation",
    "Wellness Theatre",
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double bannerFontSize = width > 600 ? 48 : 14; // 6% of screen width
    double bannerHeight = width > 600 ? 600 : 330;
    double titleFontSize = width * 0.03;
    bool isMobile = width < 600;
    bool isLargeScreen = width > 600;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Text("Way To Relaxation Activities",
              style: TextStyle(fontSize: titleFontSize, color: kblues)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Row(
            children: [
              Expanded(
                flex: width > 600
                    ? 2
                    : 2, // Adjusting size based on screen width.
                child: ClipRect(
                  child: Image.asset(
                    relaxationimg[selectedIndex],
                    fit: BoxFit.fill,
                    width: width > 600 ? 540 : 250,
                    height: width > 600 ? 515 : 250,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                flex: width > 600
                    ? 2
                    : 2, // Adjusting size based on screen width.
                child: Column(
//mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                      List.generate(relaxationimg.length * 2 - 1, (index) {
// Every odd index will be a divider with limited width.
                    if (index.isOdd) {
                      return Padding(
                        padding: EdgeInsets.only(
                            left: width > 600
                                ? 10
                                : 20), // Adjust left padding for responsiveness
                        child: const Divider(
                          color: kblack,
                          thickness: 3, // Set the thickness of the divider
                        ),
                      );
                    }
// Every even index will be a button.
                    final itemIndex = index ~/ 2;

                    return TextButton(
                      onPressed: () =>
                          setState(() => selectedIndex = itemIndex),
                      child: Text(
                        relaxationtitle[itemIndex],
                        style: TextStyle(
                            fontSize: titleFontSize,
                            color: kblack), // Making text size responsive
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
