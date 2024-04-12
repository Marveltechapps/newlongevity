import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:longevity_life/Controller/longivity_controller.dart';
import 'package:longevity_life/Public/constant.dart';
import 'package:longevity_life/Utility/footer.dart';
import 'package:longevity_life/Utility/header.dart';

import '../Route/route_name.dart';
import '../Utility/activities.dart';

class LongevityView extends StatefulWidget {
  const LongevityView({super.key});

  @override
  _LongevityViewState createState() => _LongevityViewState();
}

class _LongevityViewState extends State<LongevityView> {
  bool showBookNowCard = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double bannerFontSize = width > 600 ? 48 : 14; // 6% of screen width
    double bannerHeight = width > 600 ? 600 : 330;
    double titleFontSize = width * 0.03;
    double paragraphFontSize = width > 600 ? 14 : 10;
    bool isMobile = width < 600;
    return Scaffold(
      body: SingleChildScrollView(
        child: GetBuilder<LongevityContorller>(
          builder: (longevityController) => Column(
            children: [
              const Header(),
              Container(
                width: width,
                height: bannerHeight,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            longevityController.longevityBannerImage),
                        fit: BoxFit.fill)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text("Longevity",
                    style: TextStyle(fontSize: titleFontSize, color: kblues)),
              ),
              Container(
                width: width > 600 ? width * 0.7 : width - 30,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Embark on a transformative journey towards a healthier, more fulfilling life with our longevity programs. We offer activities, healthy food, and relaxation to help you feel good and stay strong. Our goal is to support you in living a longer and happier life.",
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kblack,
                      fontSize: width > 600 ? 24 : 10,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                width: isMobile ? width * 0.7 : width - 100,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: longevityController.longevityImageList.length,
                  itemBuilder: (BuildContext context, int index) => isMobile
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            Text(longevityController.title[index],
                                style: Theme.of(context).textTheme.titleLarge),
                            const SizedBox(
                              height: 10,
                            ),
                            Image.asset(
                                longevityController.longevityImageList[index],
                                width: width),
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 10, bottom: 20),
                              child: Text(longevityController.subtitle[index],
                                  textAlign: TextAlign.justify,
                                  style:
                                      Theme.of(context).textTheme.bodyMedium),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                switch (index) {
                                  case 0:
                                    Get.toNamed(nutritionScreen);
                                    break;
                                  case 1:
                                    Get.toNamed(nutritionScreen);
                                    break;
                                  case 2:
                                    Get.toNamed(nutritionScreen);
                                    break;
                                }
                              },
                              child: Text("BOOK NOW",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(color: Colors.white)),
                            ),
                          ],
                        )
                      : Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              if (index % 2 != 0)
                                Image.asset(
                                    longevityController
                                        .longevityImageList[index],
                                    width: width * 0.35),
                              if (index % 2 != 0) const SizedBox(width: 20),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(longevityController.title[index],
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineLarge),
                                    const SizedBox(height: 20),
                                    Text(longevityController.subtitle[index],
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            fontSize: paragraphFontSize)),
                                    const SizedBox(height: 20),
                                    ElevatedButton(
                                      onPressed: () {
                                        switch (index) {
                                          case 0:
                                            Get.toNamed(nutritionScreen);
                                            break;
                                          case 1:
                                            Get.toNamed(nutritionScreen);
                                            break;
                                          case 2:
                                            Get.toNamed(nutritionScreen);
                                            break;
                                        }
                                      },
                                      child: Text("BOOK NOW",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(color: Colors.white)),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 20),
                              if (index % 2 == 0)
                                Image.asset(
                                    longevityController
                                        .longevityImageList[index],
                                    width: width * 0.35),
                            ],
                          ),
                        ),
                ),
              ),
              const SizedBox(height: 20),
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
                        image: AssetImage(longevityController
                            .longevity4Image), // Specify the path to your image
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
                      color:
                          kbluebox, // Assuming kbluebox is a predefined color
                      padding: const EdgeInsets.all(
                          8.0), // Adds padding inside the text container
                      child: Text(
                        "SUPPLEMENTS CONSULT WITH DOCTOR",
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
              SizedBox(height: 40),
              const Activities(),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
