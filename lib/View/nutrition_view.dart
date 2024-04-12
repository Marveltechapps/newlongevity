import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:longevity_life/Controller/nutrition_controller.dart';
import 'package:longevity_life/Public/constant.dart';
import 'package:longevity_life/Utility/footer.dart';
import 'package:longevity_life/Utility/header.dart';

import '../Route/route_name.dart';

class NutritionView extends StatelessWidget {
  const NutritionView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double bannerHeight = width > 600 ? 600 : 330;
    double titleFontSize = width * 0.03;
    const String nutritiondining = "assets/nutritiondinig.png";
    return Scaffold(
      body: SingleChildScrollView(
        child: GetBuilder<NutritionController>(
          builder: (nutritionController) => Column(
            children: [
              const Header(),
              Container(
                width: width,
                height: bannerHeight,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(knutritiondining), fit: BoxFit.fill)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width *
                      0.9, // 90% of screen width
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Wrap(
                        alignment: WrapAlignment
                            .center, // Center the buttons as a whole
                        spacing: 8.0, // Space between buttons horizontally
                        runSpacing: 8.0, // Space between buttons vertically
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Get.toNamed(nutritionScreen);
                              // Add your navigation or functionality for Nutrition Dining here
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor:
                                  Colors.white, // Button background color
                              padding: EdgeInsets.symmetric(
                                horizontal: MediaQuery.of(context).size.width *
                                    0.04, // Responsive horizontal padding
                                vertical: 12, // Fixed vertical padding
                              ),
                              textStyle: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    0.035, // Responsive font size
                              ),
                            ),
                            child: const Text('Nutrition Dining'),
                          ),
                          const SizedBox(width: 20),
                          ElevatedButton(
                            onPressed: () {
                              Get.toNamed(diningScreen);
                              // Add your navigation or functionality for Other Dining here
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor:
                                  Colors.white, // Button background color
                              padding: EdgeInsets.symmetric(
                                horizontal: MediaQuery.of(context).size.width *
                                    0.04, // Responsive horizontal padding
                                vertical: 12, // Fixed vertical padding
                              ),
                              textStyle: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    0.035, // Responsive font size
                              ),
                            ),
                            child: const Text('Other Dining'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: width > 600 ? width * 0.7 : width - 30,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Experience wellness through nourishment with our tailored nutrition offerings. Indulge in pure vegetarian, organic meals curated to align with specific therapies, body needs, and age considerations. Our menu caters to individual dietary requirements, ensuring a holistic approach to well-being. For those requiring additional support, we offer carefully selected supplements and dietary enhancements, ensuring a comprehensive and personalized  wellness experience.",
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kblack,
                      fontSize: width > 600 ? 24 : 10,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text("WE PROVIDE",
                    style: TextStyle(fontSize: titleFontSize, color: kbluebox)),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Card(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      width: width > 600 ? width / 2 - 100 : width / 2 - 20,
                      height: width > 600 ? 300 : 200,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage(nutritionController.nutritionDish),
                              fit: BoxFit.fill)),
                      child: Container(
                        width: width > 600 ? width / 2 - 100 : width / 2 - 20,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Text("PURE VEG",
                            style: Theme.of(context).textTheme.titleMedium),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Card(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      width: width > 600 ? width / 2 - 100 : width / 2 - 20,
                      height: width > 600 ? 300 : 200,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage(nutritionController.nutritionLady),
                              fit: BoxFit.fill)),
                      child: Container(
                        width: width > 600 ? width / 2 - 100 : width / 2 - 20,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Text("ORGANIC FOOD",
                            style: Theme.of(context).textTheme.titleMedium),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                width: width > 600 ? width * 0.7 : width - 30,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Our focus is on pure vegetarian, organic cuisine, specially curated for wellness. Our menu celebrates nature's bounty, offering organic, plant-based dishes rich in nutrients and tailored to support your well-being journey. Every meal is thoughtfully crafted to nourish, rejuvenate, and promote holistic health for our guests seeking wellness.",
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kblack,
                      fontSize: width > 600 ? 24 : 10,
                      fontWeight: FontWeight.w500),
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
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            nutritiondining), // Specify the path to your image
                        fit: BoxFit
                            .cover, // Ensures the image covers the entire container
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
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
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text("Gallery",
                    style: TextStyle(fontSize: titleFontSize, color: kblues)),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: width * 0.9,
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: nutritionController.nutritionImageList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: width > 600 ? 4 : 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (BuildContext context, int index) => Image.asset(
                      nutritionController.nutritionImageList[index]),
                ),
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
