import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:longevity_life/Controller/mental_health_controller.dart';
import 'package:longevity_life/Public/constant.dart';
import 'package:longevity_life/Utility/footer.dart';
import 'package:longevity_life/Utility/header.dart';
import 'package:longevity_life/Utility/search.dart';
import '../Utility/activities.dart';

class MentalHealthView extends StatefulWidget {
  const MentalHealthView({super.key});

  @override
  _MentalHealthViewState createState() => _MentalHealthViewState();
}

class _MentalHealthViewState extends State<MentalHealthView> {
  String? selectedTitle;
  String? selectedSubtitle;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double bannerHeight = width > 600 ? 600 : 330;
    double titleFontSize = width * 0.03;

    const String organicfood = "assets/organicfood.png";
    const String nutritionfood = "assets/nutrition.jpeg";

    return Scaffold(
      body: SingleChildScrollView(
        child: GetBuilder<MentalHealthController>(
          builder: (mentalHealthController) => Column(
            children: [
              const Header(),
              Container(
                width: width,
                height: bannerHeight,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/physicalbanner.png"),
                        fit: BoxFit.fill)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text("Physical & Mental Wellness",
                    style: TextStyle(fontSize: titleFontSize, color: kblues)),
              ),
              Container(
                width: width > 600 ? width * 0.7 : width - 30,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Experience transformative mental health therapy and prioritize physical well-being with our tailored programs at the resort, offering personalised sessions in serene settings and comprehensive fitness programs for holistics wellness",
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kblack,
                      fontSize: width > 600 ? 24 : 10,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 20),
              Search(),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text("WE PROVIDE",
                    style: TextStyle(fontSize: titleFontSize, color: kbluebox)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Card(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        width: width > 600 ? width / 2 - 100 : width / 2 - 20,
                        height: width > 600 ? 300 : 200,
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(nutritionfood),
                                fit: BoxFit.fill)),
                        child: Container(
                          width: width > 600 ? width / 2 - 100 : width / 2 - 20,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Text(
                            "PURE VEG",
                            style: TextStyle(
                              color: kblack, // Text color
                              fontSize: width > 600
                                  ? 24
                                  : 12, // Text size, adjust as needed
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        width: width > 600 ? width / 2 - 100 : width / 2 - 20,
                        height: width > 600 ? 300 : 200,
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(organicfood),
                                fit: BoxFit.fill)),
                        child: Container(
                          width: width > 600 ? width / 2 - 100 : width / 2 - 20,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Text(
                            "ORGANIC FOOD",
                            style: TextStyle(
                              color: kblack, // Text color
                              fontSize: width > 600
                                  ? 24
                                  : 12, // Text size, adjust as needed
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
              const Activities(),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
