import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:longevity_life/Controller/leisure_controller.dart';
import 'package:longevity_life/Public/constant.dart';
import 'package:longevity_life/Route/route_name.dart';
import 'package:longevity_life/Utility/benifits.dart';
import 'package:longevity_life/Utility/footer.dart';
import 'package:longevity_life/Utility/header.dart';
import 'package:longevity_life/View/longevity_view.dart';

class LeisureView extends StatelessWidget {
  const LeisureView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double bannerFontSize = width > 600 ? 48 : 14; // 6% of screen width
    double bannerHeight = width > 600 ? 600 : 330;
    bool isMobile = width < 600;

    double titleFontSize = width * 0.03;

    final List<Map<String, String>> cardDetails = [
      {
        "image": kcard1Image,
        "title": "Improved water quality",
        "subtitle":
            "Using advanced water purification methods like reverse osmosis or UV sterilization to make sure your drinking water is clean and safe"
      },
      {
        "image": kcard2Image,
        "title": "Optimal Sleep Environment",
        "subtitle":
            "Equipping rooms with adjustable lighting systems, blackout curtains, & soundproofing features to create a conducive environment for restful sleep."
      },
      {
        "image": kcard3Image,
        "title": "Enhanced Indoor Air Quality",
        "subtitle":
            "Utilizing state-of-the-art HEPA filters and advanced filtration systems to remove airborne pollutants and allergens."
      },
      {
        "image": kcard4Image,
        "title": "Enhanced Physical Comfort",
        "subtitle":
            "Providing premium bedding, ergonomic furniture, & temperature control options to maximize comfort and relaxation during the stay."
      },
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: GetBuilder<LeisureController>(
          builder: (leisureController) => Column(
            children: [
              const Header(),
              const SizedBox(height: 20),
              Container(
                width: width,
                height: bannerHeight,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(leisureController.leisureBannerImage),
                  fit: BoxFit.fill,
                )),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 20),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                        "Relax, Recharge, Repeat: Your Perfect \nLeisure Escape",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Colors.white,
                            fontSize: bannerFontSize,
                            fontStyle: FontStyle.italic)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: Text("Leisure Stay",
                    style: TextStyle(fontSize: titleFontSize, color: kblues)),
              ),
              Container(
                width: width > 600 ? width * 0.7 : width - 30,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Experience leisure and comfort with our diverse range of accommodations catering to every preference. Our organic rooms are designed with climate change and sustainability in mind. From cozy single rooms to spacious villas, find your perfect retreat amidst our lush surroundings. Our array of rooms—single, double, triple, villas, cottages, and co-sharing spaces—offer a blend of luxury, convenience, and personalized comfort for an unforgettable stay.",
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kblack,
                      fontSize: width > 600 ? 24 : 10,
                      fontWeight: FontWeight.w500),
                ),
              ),
              // const Search(),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: isMobile ? width * 0.7 : width,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: leisureController.imageList.length,
                  itemBuilder: (BuildContext context, int index) => isMobile
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            Text(leisureController.title[index],
                                style: Theme.of(context).textTheme.titleLarge),
                            const SizedBox(height: 10),
                            Text(leisureController.smalltitle[index],
                                style: Theme.of(context).textTheme.titleSmall),
                            const SizedBox(
                              height: 10,
                            ),
                            Image.asset(leisureController.imageList[index],
                                width: width),
                            const SizedBox(height: 10),
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 10, bottom: 20),
                              child: Text(leisureController.subtitle[index],
                                  textAlign: TextAlign.justify,
                                  style:
                                      Theme.of(context).textTheme.bodyMedium),
                            ),
                            // const SizedBox(height: 10),
                            // Container(
                            //   width: width *
                            //       (width <= 600
                            //           ? 0.8
                            //           : 0.2), // Adjust width based on screen size
                            //   height: 1,
                            //   color: kLightGrey,
                            //   margin: const EdgeInsets.symmetric(vertical: 20),
                            // ),
                            const SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LongevityView()));
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
                                Image.asset(leisureController.imageList[index],
                                    width: width * 0.35),
                              if (index % 2 != 0) const SizedBox(width: 20),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(leisureController.title[index],
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineLarge),
                                    const SizedBox(height: 20),
                                    Text(leisureController.smalltitle[index],
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall),
                                    const SizedBox(height: 20),
                                    Container(
                                      width: width *
                                          (width), // Adjust width based on screen size
                                      height: 1,
                                      color: kLightGrey,
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 20),
                                    ),
                                    const SizedBox(height: 20),
                                    Text(leisureController.subtitle[index],
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
                                Image.asset(leisureController.imageList[index],
                                    width: width * 0.35),
                            ],
                          ),
                        ),
                ),
              ),
              SizedBox(
                height: 20.0,
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
                        image: AssetImage(leisureController
                            .leisure1Image), // Specify the path to your image
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
                      color: kmaroon, // Assuming kbluebox is a predefined color
                      padding: const EdgeInsets.all(
                          8.0), // Adds padding inside the text container
                      child: TextButton(
                        onPressed: () {
                          Get.toNamed(diningScreen);
                        },
                        child: Text(
                          "BOOK YOUR OTHER DINNING",
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
                  ),
                ],
              ),

              SizedBox(
                height: 20.0,
              ),

              const Benefits(),
              SizedBox(
                height: 20.0,
              ),
              Wrap(
                spacing: 10, // Space between cards
                runSpacing: 40, // Space between rows
                children: cardDetails
                    .map((detail) => newcard(context, detail))
                    .toList(),
              ),
              SizedBox(
                height: 20.0,
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
