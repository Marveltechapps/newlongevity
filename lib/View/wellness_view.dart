import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:longevity_life/Controller/wellness_controller.dart';
import 'package:longevity_life/Public/constant.dart';
import 'package:longevity_life/Utility/footer.dart';
import 'package:longevity_life/Utility/header.dart';
import '../Route/route_name.dart';

class WellnessView extends StatefulWidget {
  const WellnessView({super.key});

  @override
  State<WellnessView> createState() => _WellnessViewState();
}

class _WellnessViewState extends State<WellnessView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double bannerFontSize = width > 600 ? 48 : 14; // 6% of screen width
    double bannerHeight = width > 600 ? 600 : 330;
    double titleFontSize = width * 0.03;
    bool isMobile = width < 600;
    return Scaffold(
      body: SingleChildScrollView(
        child: GetBuilder<WellnessController>(
          builder: (wellnessController) => Column(
            children: [
              const Header(),
              Container(
                width: width,
                height: bannerHeight,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage(wellnessController.wellnessBannerImage),
                        fit: BoxFit.fill)),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 20),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                        textAlign: TextAlign.justify,
                        "Renew Your Vitality: Where Wellness \nMeets Innovation",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Colors.white,
                            fontSize: bannerFontSize,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w900)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: Text("Wellness Stay",
                    style: TextStyle(fontSize: titleFontSize, color: kblues)),
              ),
              Container(
                width: width > 600 ? width * 0.7 : width - 30,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Our Wellness Tourism Resort offers rejuvenating experiences for mental and physical wellness, featuring programs on Longevity, Mindfulness, Stress Management, and Healthy Living. We provide high-quality therapies including Thermal/Mineral Springs Spa, Naturopathy, and Ayurveda, along with amenities such as Fitness Center and Eco-friendly activities.",
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kblack,
                      fontSize: width > 600 ? 24 : 10,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: isMobile ? width * 0.7 : width,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: wellnessController.imageList.length,
                  itemBuilder: (BuildContext context, int index) => isMobile
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            Text(wellnessController.title[index],
                                style: Theme.of(context).textTheme.titleLarge),
                            const SizedBox(
                              height: 10,
                            ),
                            Image.asset(wellnessController.imageList[index],
                                width: width),
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 10, bottom: 20),
                              child: Text(wellnessController.subtitle[index],
                                  textAlign: TextAlign.justify,
                                  style:
                                      Theme.of(context).textTheme.bodyMedium),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                switch (index) {
                                  case 0:
                                    Get.toNamed(longevityScreen);
                                    break;
                                  case 1:
                                    Get.toNamed(mentalHealtyScreen);
                                    break;
                                  case 2:
                                    Get.toNamed(digitalDetoxScreen);
                                    break;
                                  case 3:
                                    Get.toNamed(beautyAndSkinScreen);
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
                                Image.asset(wellnessController.imageList[index],
                                    width: width * 0.35),
                              if (index % 2 != 0) const SizedBox(width: 20),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(wellnessController.title[index],
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineLarge),
                                    const SizedBox(height: 20),
                                    Text(wellnessController.subtitle[index],
                                        textAlign: TextAlign.justify,
                                        style: const TextStyle(fontSize: 14)),
                                    const SizedBox(height: 20),
                                    ElevatedButton(
                                      onPressed: () {
                                        switch (index) {
                                          case 0:
                                            Get.toNamed(longevityScreen);
                                            break;
                                          case 1:
                                            Get.toNamed(mentalHealtyScreen);
                                            break;
                                          case 2:
                                            Get.toNamed(digitalDetoxScreen);
                                            break;
                                          case 3:
                                            Get.toNamed(beautyAndSkinScreen);
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
                                Image.asset(wellnessController.imageList[index],
                                    width: width * 0.35),
                            ],
                          ),
                        ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text("Way To Relaxation Activities",
                    style: TextStyle(fontSize: titleFontSize, color: kblues)),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Row(
                  children: [
                    Expanded(
                      flex: width > 600
                          ? 2
                          : 2, // Adjusting size based on screen width.
                      child: ClipRect(
                        child: Image.asset(
                          wellnessController.relaxationimg[selectedIndex],
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
                        children: List.generate(
                            wellnessController.relaxationimg.length * 2 - 1,
                            (index) {
                          // Every odd index will be a divider with limited width.
                          if (index.isOdd) {
                            return Padding(
                              padding:
                                  EdgeInsets.only(left: width > 600 ? 10 : 20),
                              // Adjust left padding for responsiveness
                              child: const Divider(
                                color: kblack,
                                thickness:
                                    3, // Set the thickness of the divider
                              ),
                            );
                          }
                          // Every even index will be a button.
                          final itemIndex = index ~/ 2;

                          return TextButton(
                            onPressed: () =>
                                setState(() => selectedIndex = itemIndex),
                            child: Text(
                              wellnessController.relaxationtitle[itemIndex],
                              style: TextStyle(
                                  fontSize:
                                      titleFontSize), // Making text size responsive
                            ),
                          );
                        }),
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
