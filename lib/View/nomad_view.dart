import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:longevity_life/Controller/nomad_controller.dart';
import 'package:longevity_life/Public/constant.dart';
import 'package:longevity_life/Utility/footer.dart';
import 'package:longevity_life/Utility/header.dart';

import '../Utility/benifits.dart';

class NomadView extends StatelessWidget {
  const NomadView({super.key});

  @override
  Widget build(BuildContext context) {
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
    final List<Map<String, String>> cardData = [
      {
        'title': 'Global e-sim',
        'paragraph':
            'Explore the world while staying seamlessly connected with our global E-Sim. We offer a top-tier network sourced from reputable Telecoms to ensure your busy professional life never misses a beat.',
        'image': 'assets/benefitsim.png',
      },
      {
        'title': 'Travel health Insursnce',
        'paragraph':
            'Embark on your global adventures with confidence, supported by our tailored travel health insurance designed for digital nomads, ensuring your well-being wherever your professional journey takes you.',
        'image': 'assets/benefitflight.png',
      },
      {
        'title': 'Trip For Remote Worker',
        'paragraph':
            'Indulge in hassle-free travel with our exclusive 2 to 3-week packages, thoughtfully designed for digital nomads. Elevate your professional journey while we handle the intricacies of your itinerary.',
        'image': 'assets/benefittravelbag.png',
      },
    ];
    double width = MediaQuery.of(context).size.width;
    double bannerFontSize = width > 600 ? 48 : 14; // 6% of screen width
    double bannerHeight = width > 600 ? 600 : 330;
    double titleFontSize = width * 0.03;

    return Scaffold(
      body: SingleChildScrollView(
        child: GetBuilder<NomadController>(
          builder: (nomadController) => Column(
            children: [
              const Header(),
              Container(
                width: width,
                height: bannerHeight,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(nomadController.nomadBannerImage),
                        fit: BoxFit.fill)),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 20),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                        textAlign: TextAlign.center,
                        "Every journey begins with a single step, \nand the adventure never ends.",
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
                child: Text("Nomad Stay",
                    style: TextStyle(fontSize: titleFontSize, color: kred)),
              ),
              Container(
                width: width > 600 ? width * 0.7 : width - 30,
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Calling all digital nomads! Elevate your work-life balance at our resort designed for the modern remote worker. Enjoy high-speed connectivity, dedicated workspaces, and a serene environment that fosters productivity and relaxation. Embrace the freedom to work remotely while indulging in wellness amenities and activities curated to support your lifestyle, ensuring a perfect blend of work and rejuvenation.",
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kblack,
                      fontSize: width > 600 ? 24 : 10,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: width > 850
                    ? GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5,
                        ),
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                index == 0
                                    ? nomadController.nomad1Image
                                    : index == 1
                                        ? nomadController.nomad2Image
                                        : nomadController.nomad3Image,
                                width: width / 2,
                                height: 400,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Text(
                                  index == 0
                                      ? "SHORT TERM STAY"
                                      : index == 1
                                          ? "EXTENDED STAY"
                                          : "SEASONAL STAY",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: width > 600 ? 24 : 18),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.4,
                                child: Text(
                                  index == 0
                                      ? "Finds you The best places in the world to live, work and travel as a remote worker."
                                      : index == 1
                                          ? "Amenities such as self-serve laundry and in-suite kitchens, they're a cost-effective and convenient alternative to renting a traditional apartment."
                                          : "Set Different Rates for different time of the year",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: kDarkGrey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: width > 600 ? 20 : 14),
                                ),
                              ),
                            ],
                          );
                        },
                      )
                    : Column(
                        children: [
                          for (int index = 0; index < 3; index++)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    index == 0
                                        ? nomadController.nomad1Image
                                        : index == 1
                                            ? nomadController.nomad2Image
                                            : nomadController.nomad3Image,
                                    width: width,
                                    height: 400,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 0),
                                  child: Text(
                                    index == 0
                                        ? "SHORT TERM STAY"
                                        : index == 1
                                            ? "EXTENDED STAY"
                                            : "SEASONAL STAY",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: width > 600 ? 24 : 24),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.4,
                                  child: Text(
                                    index == 0
                                        ? "Finds you The best places in the world to live, work and travel as a remote worker."
                                        : index == 1
                                            ? "Amenities such as self-serve laundry and in-suite kitchens, they're a cost-effective and convenient alternative to renting a traditional apartment."
                                            : "Set Different Rates for different time of the year",
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: kDarkGrey),
                                  ),
                                ),
                              ],
                            ),
                        ],
                      ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("JOIN OUR SELECT NETWORK AROUND THE TAMIL NADU",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kred,
                        fontWeight: FontWeight.bold,
                        fontSize: width > 600 ? 26 : 18)),
              ),
              SizedBox(height: 15),
              width > 600
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Adjusted Container with responsive width
                        _buildResponsiveContainer1(
                            width,
                            0.2,
                            380,
                            nomadController.nomadResort,
                            "CHENNAI",
                            "Nomad Stay - Beach Side",
                            context),
                        _buildResponsiveContainer2(
                            width,
                            0.2,
                            380,
                            nomadController.nomadLaptop,
                            "COIMBATORE",
                            "Nomad Stay - River Side",
                            context),
                        _buildResponsiveContainer3(
                            width,
                            0.2,
                            380,
                            nomadController.nomadLady,
                            "COIMBATORE",
                            "Nomad Stay - River Side",
                            context),
                        _buildResponsiveContainer4(
                            width,
                            0.2,
                            380,
                            nomadController.nomadBeach,
                            "COIMBATORE",
                            "Nomad Stay - Beach Side",
                            context),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Adjusted Container with responsive width
                        _buildResponsiveContainer1(
                            width - 50,
                            1,
                            400,
                            nomadController.nomadResort,
                            "CHENNAI",
                            "Nomad Stay - Beach Side",
                            context),
                        SizedBox(height: 10),
                        _buildResponsiveContainer2(
                            width - 50,
                            1,
                            400,
                            nomadController.nomadLaptop,
                            "COIMBATORE",
                            "Nomad Stay - River Side",
                            context),
                        SizedBox(height: 10),
                        _buildResponsiveContainer3(
                            width - 50,
                            1,
                            400,
                            nomadController.nomadLady,
                            "COIMBATORE",
                            "Nomad Stay - River Side",
                            context),
                        SizedBox(height: 10),
                        _buildResponsiveContainer4(
                            width - 50,
                            1,
                            400,
                            nomadController.nomadBeach,
                            "COIMBATORE",
                            "Nomad Stay - Beach Side",
                            context),
                      ],
                    ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("WHAT WE OFFER",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kred,
                        fontWeight: FontWeight.bold,
                        fontSize: width > 600 ? 26 : 18)),
              ),
              SizedBox(height: 50),
              Wrap(
                spacing: 10, // Space between cards
                runSpacing: 10, // Space between rows
                children:
                    cardData.map((data) => _buildCard(context, data)).toList(),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("what make OUR PLACE DIFFERENT",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kred,
                        fontWeight: FontWeight.bold,
                        fontSize: width > 600 ? 26 : 18)),
              ),
              SizedBox(height: 50),
              Wrap(
                spacing: 10, // Space between cards
                runSpacing: 40, // Space between rows
                children: cardDetails
                    .map((detail) => newcard(context, detail))
                    .toList(),
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildCard(BuildContext context, Map<String, String> data) {
  final width1 = MediaQuery.of(context).size.width;
  return Padding(
    padding: width1 < 600 ? EdgeInsets.all(20.0) : EdgeInsets.all(0.0),
    child: Card(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFAFAFA), // Container's background color
          border: Border.all(
            color: Color(0xFFDA9E73), // Border color
            width: 2.0, // Border width
          ),
          borderRadius:
              BorderRadius.circular(4.0), // Adjust border radius as needed
        ),

        width: width1 > 600
            ? width1 / 3 - 50
            : width1 - 50, // Half the width of the screen minus padding
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              clipBehavior:
                  Clip.none, // Prevents clipping of the Positioned child.
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFFFAFAFA), // This container's color
                  ),
                ),
                Positioned(
                  top: -40, // Adjust the position as needed
                  child: Container(
                    width: 100, // Outer width including the border
                    height: 100, // Outer height including the border
                    padding: EdgeInsets.all(3), // Adjust the border width here
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // Ensure the background is transparent
                      shape: BoxShape
                          .circle, // This will ensure the container is circular
                      border: Border.all(
                        color: Color(0xFFDA9E73), // Specify the border color
                        width: 7, // Specify the border width
                      ),
                    ),
                    child: ClipOval(
                      child: Center(
                        child: FractionallySizedBox(
                          widthFactor:
                              0.6, // Adjusts the size of the image to 80% of its container
                          heightFactor:
                              0.6, // Adjusts the height similarly; ensure it maintains aspect ratio
                          child: Image.asset(
                            data[
                                'image']!, // Make sure this is the correct path to your image
                            fit: BoxFit
                                .cover, // This will cover the circular area, maintaining the aspect ratio
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    data['title']!,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    data['paragraph']!,
                    style: Theme.of(context).textTheme.labelSmall,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _buildResponsiveContainer1(
    double screenWidth,
    double widthFraction,
    double height,
    String imageName,
    String city,
    String description,
    BuildContext context) {
  final cityFontSize = getFontSize(screenWidth) * 1.2;
  final descriptionFontSize = getFontSize(screenWidth);
  return GetBuilder<NomadController>(
    builder: (nomadController) => Container(
      width: screenWidth * widthFraction,
      height: height,
      alignment: Alignment.bottomCenter,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  nomadController.nomadResort), // Example for the resort image
              // Adjust according to your asset path
              fit: BoxFit.fill)),
      child: Container(
        width: screenWidth * widthFraction,
        height: 80,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        color: Colors.black87,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.location_on_outlined,
                color: Colors.white, size: 20),
            SizedBox(
                width: screenWidth * 0.01), // Space between the icon and text
            Expanded(
              // Using Expanded to prevent overflow
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment
                    .center, // Center vertically within the expanded space
                children: [
                  Text(city,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: cityFontSize)), // Adjusted font size
                  Text(description,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: descriptionFontSize)), // Adjusted font size
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget _buildResponsiveContainer2(
    double screenWidth,
    double widthFraction,
    double height,
    String imageName,
    String city,
    String description,
    BuildContext context) {
  final cityFontSize = getFontSize(screenWidth) * 1.2;
  final descriptionFontSize = getFontSize(screenWidth);
  return GetBuilder<NomadController>(
    builder: (nomadController) => Container(
      width: screenWidth * widthFraction,
      height: height,
      alignment: Alignment.bottomCenter,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  nomadController.nomadLaptop), // Example for the resort image
              // Adjust according to your asset path
              fit: BoxFit.fill)),
      child: Container(
        width: screenWidth * widthFraction,
        height: 80,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        color: Colors.black87,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.location_on_outlined,
                color: Colors.white, size: 20),
            SizedBox(
                width: screenWidth * 0.01), // Space between the icon and text
            Expanded(
              // Using Expanded to prevent overflow
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment
                    .center, // Center vertically within the expanded space
                children: [
                  Text(city,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: cityFontSize)), // Adjusted font size
                  Text(description,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: descriptionFontSize)), // Adjusted font size
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget _buildResponsiveContainer3(
    double screenWidth,
    double widthFraction,
    double height,
    String imageName,
    String city,
    String description,
    BuildContext context) {
  final cityFontSize = getFontSize(screenWidth) * 1.2;
  final descriptionFontSize = getFontSize(screenWidth);
  return GetBuilder<NomadController>(
    builder: (nomadController) => Container(
      width: screenWidth * widthFraction,
      height: height,
      alignment: Alignment.bottomCenter,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  nomadController.nomadLady), // Example for the resort image
              // Adjust according to your asset path
              fit: BoxFit.fill)),
      child: Container(
        width: screenWidth * widthFraction,
        height: 80,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        color: Colors.black87,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.location_on_outlined,
                color: Colors.white, size: 20),
            SizedBox(
                width: screenWidth * 0.01), // Space between the icon and text
            Expanded(
              // Using Expanded to prevent overflow
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment
                    .center, // Center vertically within the expanded space
                children: [
                  Text(city,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: cityFontSize)), // Adjusted font size
                  Text(description,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: descriptionFontSize)), // Adjusted font size
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget _buildResponsiveContainer4(
    double screenWidth,
    double widthFraction,
    double height,
    String imageName,
    String city,
    String description,
    BuildContext context) {
  final cityFontSize = getFontSize(screenWidth) * 1.2;
  final descriptionFontSize = getFontSize(screenWidth);
  return GetBuilder<NomadController>(
    builder: (nomadController) => Container(
      width: screenWidth * widthFraction,
      height: height,
      alignment: Alignment.bottomCenter,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  nomadController.nomadBeach), // Example for the resort image
              // Adjust according to your asset path
              fit: BoxFit.fill)),
      child: Container(
        width: screenWidth * widthFraction,
        height: 80,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        color: Colors.black87,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.location_on_outlined,
                color: Colors.white, size: 25),
            SizedBox(
                width: screenWidth * 0.01), // Space between the icon and text
            Expanded(
              // Using Expanded to prevent overflow
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment
                    .center, // Center vertically within the expanded space
                children: [
                  Text(city,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: cityFontSize)), // Adjusted font size
                  Text(description,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: descriptionFontSize)), // Adjusted font size
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

double getFontSize(double screenWidth) {
  if (screenWidth < 360) {
    // Small screens
    return 16.0;
  } else if (screenWidth < 600) {
    // Medium screens
    return 16.0;
  } else if (screenWidth < 960) {
    // Large screens
    return 10.0;
  } else {
    // Extra large screens
    return 14.0;
  }
}
