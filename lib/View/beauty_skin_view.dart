import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:longevity_life/Controller/beauty_skin_controller.dart';
import 'package:longevity_life/Public/constant.dart';
import 'package:longevity_life/Route/route_name.dart';
import 'package:longevity_life/Utility/footer.dart';
import 'package:longevity_life/Utility/header.dart';

class BeautySkinView extends StatelessWidget {
  const BeautySkinView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double bannerFontSize = width > 600 ? 48 : 14; // 6% of screen width
    double bannerHeight = width > 600 ? 600 : 330;
    double titleFontSize = width * 0.03;
    double paragraphFontSize = width > 600 ? 14 : 10;
    bool isMobile = width < 600;
    double bannerFontSize = width > 600 ? 48 : 14;
    return Scaffold(
      body: SingleChildScrollView(
        child: GetBuilder<BeautySkinController>(
          builder: (BeautySkinController) => Column(
            children: [
              const Header(),
              Container(
                width: width,
                height: bannerHeight,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            BeautySkinController.digitalDetoxBannerImage),
                        fit: BoxFit.fill)),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 20),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                        "Radiance Redefined: Unveil Your Natural Beauty.",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Colors.white,
                            fontSize: bannerFontSize,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w900)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text("BEAUTY AND SKIN CARE",
                    style:
                        TextStyle(fontSize: titleFontSize, color: Colors.pink)),
              ),
              Container(
                width: width > 600 ? width * 0.7 : width - 30,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Indulge in our comprehensive wellness programs designed to rejuvenate and enhance your beauty and skin care. From luxurious full-body facials to invigorating wraps, targeted spot treatments, soothing massages, and revitalizing exfoliation, each experience is tailored to nurture your skin and elevate your natural radiance. Immerse yourself in the healing power of aromatherapy and emerge feeling refreshed, revitalized, and radiant.",
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
                  itemCount: BeautySkinController.longevityImageList.length,
                  itemBuilder: (BuildContext context, int index) => isMobile
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            Text(BeautySkinController.title[index],
                                style: Theme.of(context).textTheme.titleLarge),
                            const SizedBox(height: 5),
                            Text(BeautySkinController.text[index],
                                style:
                                    Theme.of(context).textTheme.headlineMedium),
                            const SizedBox(
                              height: 10,
                            ),
                            Image.asset(
                                BeautySkinController.longevityImageList[index],
                                width: width),
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 10, bottom: 20),
                              child: Text(BeautySkinController.subtitle[index],
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
                                    BeautySkinController
                                        .longevityImageList[index],
                                    width: width * 0.35),
                              if (index % 2 != 0) const SizedBox(width: 20),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(BeautySkinController.title[index],
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineLarge),
                                    SizedBox(height: 5),
                                    Text(BeautySkinController.text[index],
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium),
                                    const SizedBox(height: 20),
                                    Text(BeautySkinController.subtitle[index],
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            fontSize: paragraphFontSize)),
                                    const SizedBox(height: 20),
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
                                    BeautySkinController
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
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            "assets/bookyour.png"), // Specify the path to your image
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
                      color: kpink, // Assuming kbluebox is a predefined color
                      padding: const EdgeInsets.all(
                          8.0), // Adds padding inside the text container
                      child: TextButton(
                        onPressed: () {
                          Get.toNamed(nutritionScreen);
                        },
                        child: Text(
                          "BOOK YOUR NUTRITION DINNING",
                          textAlign: TextAlign
                              .center, // Centers the text inside the container
                          style: TextStyle(
                            color: Colors.pink, // Text color
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
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
