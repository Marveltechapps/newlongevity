import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:longevity_life/Controller/sport_controller.dart';
import 'package:longevity_life/Public/constant.dart';
import 'package:longevity_life/Utility/footer.dart';
import 'package:longevity_life/Utility/header.dart';

class SportView extends StatelessWidget {
  const SportView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double bannerFontSize = width > 600 ? 48 : 14; // 6% of screen width
    double bannerHeight = width > 600 ? 600 : 330;

    double bodyFontSize = width > 600 ? 28 : 12;
    double paragraphFontSize = width > 600 ? 14 : 10;
    double titleFontSize = width > 600 ? 24 : 12;

    bool isMobile = width < 600;
    return Scaffold(
      body: SingleChildScrollView(
        child: GetBuilder<SportController>(
          builder: (sportController) => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Header(),
              Container(
                width: width,
                height: bannerHeight,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(sportController.sportBannerImage),
                        fit: BoxFit.fill)),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 20),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                        "Dive into Adventure, Ride the Wind: \nThrill seekers welcome!",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Colors.white,
                            fontSize: bannerFontSize,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w900)),
                  ),
                ),
              ),
              Container(
                width: width * 0.7, // Set the desired width of the container
                height: bannerHeight, // Set the desired height of the container
                margin: const EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                  // This sets the background image
                  image: DecorationImage(
                    image: AssetImage(sportController.sportVideoImage),
                    fit: BoxFit.cover, // Cover the entire container area
                  ),
                ),
                child: Align(
                  alignment: Alignment
                      .center, // This aligns the child in the center of the container
                  child: Image.asset(
                    sportController.sportPlayImage,
                    width:
                        50, // Set the desired width of the sports play image, making it smaller
                    height:
                        50, // Set the desired height of the sports play image
                    // No need for BoxFit.fill, allowing the image to maintain its aspect ratio
                  ),
                ),
              ),
              Container(
                width: width * 0.7,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  "Dive into adventure at our wellness retreat with an array of air and water sports. Whether it's soaring through the skies with thrilling aerial pursuits or diving into refreshing aquatic activities, there's something for every adventurer. Experience the rush of wind or the splash of waves as you indulge in an exhilarating blend of outdoor fun and nature's embrace.",
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kDarkGrey,
                      fontSize: bodyFontSize,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                width: isMobile ? width * 0.7 : width,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: sportController.sportImageList.length,
                    itemBuilder: (BuildContext context, int index) => isMobile
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Text(sportController.title[index],
                                  style:
                                      Theme.of(context).textTheme.titleLarge),
                              const SizedBox(
                                height: 10,
                              ),
                              Image.asset(sportController.sportImageList[index],
                                  width: width),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 10, bottom: 20),
                                child: Text(sportController.subtitle[index],
                                    textAlign: TextAlign.justify,
                                    style:
                                        Theme.of(context).textTheme.bodyMedium),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text("BOOK NOW",
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                          color: Colors.white,
                                        )),
                              ),
                            ],
                          )
                        : Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40,
                                vertical: 20), // Consistent horizontal padding
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                if (index % 2 != 0)
                                  Image.asset(
                                    sportController.sportImageList[index],
                                    width: width * 0.35,
                                  ),
                                if (index % 2 != 0)
                                  const SizedBox(
                                      width:
                                          20), // Consistent spacing between the image and text
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        sportController.title[index],
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineLarge,
                                      ),
                                      const SizedBox(
                                          height: 20), // Consistent spacing
                                      Text(
                                        sportController.subtitle[index],
                                        style: TextStyle(
                                            fontSize: paragraphFontSize),
                                        textAlign: TextAlign.justify,
                                      ),
                                      const SizedBox(
                                          height: 20), // Consistent spacing
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          "BOOK NOW",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                const SizedBox(width: 20),
                                if (index % 2 == 0)
                                  Image.asset(
                                      sportController.sportImageList[index],
                                      width: width * 0.35),
                              ],
                            ),
                          )),
              ),
              const SizedBox(height: 40),
              Container(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Text("Update & Events",
                    style: TextStyle(
                        fontSize: titleFontSize,
                        color: kblack,
                        fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: isMobile ? width * 0.7 : width,
                child: isMobile
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(" AquaFest: Ride the Waves",
                              style: Theme.of(context).textTheme.headlineLarge),
                          const SizedBox(height: 20),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Text(
                              "Dive into an aquatic adventure with us at Aqua fest 🌊 🏄‍♀️ Experience the thrill of water sports like never before! Whether you're a seasoned pro or a beginner, join us on Aqua Fest for a day filled with waves, excitement, and endless fun. From surfing to kayaking and everything in between, there's something for everyone. Don't miss out on the splash-tacular moments awaiting you!",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: paragraphFontSize,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            width: width,
                            height: 330,
                            child: CarouselSlider.builder(
                              itemCount: sportController.sportSlide.length,
                              options: CarouselOptions(
                                height: 330,
                                autoPlay: true,
                                viewportFraction: 1,
                                autoPlayInterval: const Duration(seconds: 2),
                                scrollPhysics:
                                    const NeverScrollableScrollPhysics(),
                              ),
                              itemBuilder: (BuildContext context, int itemIndex,
                                      int pageViewIndex) =>
                                  Container(
                                height: 330,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(sportController
                                            .sportSlide[itemIndex]),
                                        fit: BoxFit.fill)),
                              ),
                            ),
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: width * 0.30,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("AquaFest: Ride the Waves",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Dive into an aquatic adventure with us at Aqua fest 🌊 🏄‍♀️ Experience the thrill of water sports like never before! Whether you're a seasoned pro or a beginner, join us on Aqua Fest for a day filled with waves, excitement, and endless fun. From surfing to kayaking and everything in between, there's something for everyone. Don't miss out on the splash-tacular moments awaiting you!",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: width * 0.50,
                            height: 400,
                            child: CarouselSlider.builder(
                              itemCount: sportController.sportSlide.length,
                              options: CarouselOptions(
                                height: 600,
                                autoPlay: true,
                                viewportFraction: 1,
                                autoPlayInterval: const Duration(seconds: 2),
                                scrollPhysics:
                                    const NeverScrollableScrollPhysics(),
                              ),
                              itemBuilder: (BuildContext context, int itemIndex,
                                      int pageViewIndex) =>
                                  Container(
                                height: 600,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(sportController
                                            .sportSlide[itemIndex]),
                                        fit: BoxFit.fill)),
                              ),
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
