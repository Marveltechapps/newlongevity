import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:longevity_life/Controller/facility_controller.dart';
import 'package:longevity_life/Public/constant.dart';
import 'package:longevity_life/Utility/footer.dart';
import 'package:longevity_life/Utility/header.dart';

class FacilityView extends StatelessWidget {
  const FacilityView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double bannerFontSize = width > 600 ? 48 : 14; // 6% of screen width
    double bannerHeight = width > 600 ? 600 : 330;

    double paragraphFontSize = width > 600 ? 14 : 10;

    bool isMobile = width < 600;
    return Scaffold(
      body: SingleChildScrollView(
        child: GetBuilder<FacilityController>(
          builder: (facilityController) => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Header(),
              Container(
                width: width,
                height: bannerHeight,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage(facilityController.facilityBannerImage),
                        fit: BoxFit.fill)),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 20),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                        "Discover, Unwind, Renew: Your Sanctuary \nAwaits at Our Resort Retreat.",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Colors.white,
                            fontSize: bannerFontSize,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w900)),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: isMobile ? width * 0.7 : width - 100,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: facilityController.facilityImageList.length,
                  itemBuilder: (BuildContext context, int index) => isMobile
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            Text(facilityController.title[index],
                                style: Theme.of(context).textTheme.titleLarge),
                            const SizedBox(
                              height: 10,
                            ),
                            Image.asset(
                                facilityController.facilityImageList[index],
                                width: width),
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 10, bottom: 20),
                              child: Text(facilityController.subtitle[index],
                                  textAlign: TextAlign.justify,
                                  style:
                                      Theme.of(context).textTheme.bodyMedium),
                            ),
                            ElevatedButton(
                              onPressed: () {},
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
                                    facilityController.facilityImageList[index],
                                    width: width * 0.35),
                              if (index % 2 != 0) const SizedBox(height: 20),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(facilityController.title[index],
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineLarge),
                                    SizedBox(height: 20),
                                    Text(facilityController.subtitle[index],
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            fontSize: paragraphFontSize)),
                                    SizedBox(height: 20),
                                    ElevatedButton(
                                      onPressed: () {},
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
                                    facilityController.facilityImageList[index],
                                    width: width * 0.35),
                            ],
                          ),
                        ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: width,
                height: width > 600 ? 400 : 300,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(kSeaImage), fit: BoxFit.fill)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: width / 6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                                facilityController.facilityFoodImage,
                                width: 75,
                                color: Colors.white),
                          ),
                          SizedBox(
                            child: Text(
                                "Full Board (Breakfast, Lunch and Dinner)",
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(color: Colors.white)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width / 6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                                facilityController.facilityBedImage,
                                width: 75,
                                color: Colors.white),
                          ),
                          SizedBox(
                            child: Text("Stay",
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(color: Colors.white)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width / 6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(kPoliceImage,
                                width: 75, color: Colors.white),
                          ),
                          SizedBox(
                            child: Text("24/7 Security control",
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(color: Colors.white)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width / 6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                                facilityController.facilityPlateImage,
                                width: 75,
                                color: Colors.white),
                          ),
                          SizedBox(
                            child: Text("Organic Vegetarian Cuisine",
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(color: Colors.white)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width / 6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(kSolorImage,
                                width: 75, color: Colors.white),
                          ),
                          SizedBox(
                            child: Text("Clean & Serene Environment",
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(color: Colors.white)),
                          )
                        ],
                      ),
                    ),
                  ],
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
