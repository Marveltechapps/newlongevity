import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:longevity_life/Controller/dining_controller.dart';
import 'package:longevity_life/Public/constant.dart';
import 'package:longevity_life/Utility/footer.dart';
import 'package:longevity_life/Utility/header.dart';

import '../Route/route_name.dart';

class DiningView extends StatelessWidget {
  const DiningView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double bannerHeight = width > 600 ? 600 : 330;
    double paragraphFontSize = width > 600 ? 14 : 10;
    bool isMobile = width < 600;
    return Scaffold(
      body: SingleChildScrollView(
        child: GetBuilder<DiningController>(
          builder: (DiningController) => Column(
            children: [
              const Header(),
              Container(
                width: width,
                height: bannerHeight,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(kdining), fit: BoxFit.fill)),
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
              Container(
                width: width > 600 ? width * 0.7 : width - 30,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Step into our chic yet inviting ambiance, where warm lighting and contemporary décor set the stage for a memorable dining experience. Whether you're seeking an intimate dinner for two or a lively gathering with friends, our versatile space caters to every occasion.",
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
                  itemCount: DiningController.diningImageList.length,
                  itemBuilder: (BuildContext context, int index) => isMobile
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            Text(DiningController.title[index],
                                style: Theme.of(context).textTheme.titleLarge),
                            const SizedBox(
                              height: 10,
                            ),
                            Image.asset(DiningController.diningImageList[index],
                                width: width),
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 10, bottom: 20),
                              child: Text(DiningController.subtitle[index],
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
                                    DiningController.diningImageList[index],
                                    width: width * 0.35),
                              if (index % 2 != 0) const SizedBox(width: 20),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(DiningController.title[index],
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineLarge),
                                    const SizedBox(height: 20),
                                    Text(DiningController.subtitle[index],
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
                                    DiningController.diningImageList[index],
                                    width: width * 0.35),
                            ],
                          ),
                        ),
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
