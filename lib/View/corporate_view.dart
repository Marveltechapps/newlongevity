import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:longevity_life/Controller/corporate_controller.dart';
import 'package:longevity_life/Public/constant.dart';
import 'package:longevity_life/Utility/benifits.dart';
import 'package:longevity_life/Utility/footer.dart';
import 'package:longevity_life/Utility/header.dart';
import 'package:longevity_life/View/familywell-being.dart';
import 'package:longevity_life/View/personal_well_being.dart';
import 'package:longevity_life/View/professional.dart';

import '../Route/route_name.dart';
import 'longevity_view.dart';

class CorporateView extends StatefulWidget {
  const CorporateView({super.key});

  @override
  State<CorporateView> createState() => _CorporateViewState();
}

class _CorporateViewState extends State<CorporateView> {
  String? days;
  String? types;
  String? helpWithUs;
  String? diseases;
  String? healingTherapies;

  // Add your Menu class here if it's not defined elsewhere

  List<Menu> menus = [
    Menu(
        title: 'Days',
        options: ['01', '03', '06', '12', '15', '20', '24', '28', '30']),
    Menu(title: 'Types', options: [
      'Longevity',
      'Mental & Physical wellness',
      'Digital Detox',
      'Beauty & Skin Care'
    ]),
    Menu(
        title: 'Help With Us',
        options: ['Doctor Consultation', 'Select by Myself']),
    Menu(title: 'Diseases', options: [
      'Stress',
      'Sleepless',
      'Loneliness',
      'Anxiety Disorder',
      'Asthma',
      'Migrane',
      'Depression',
      'Back Neck Pain',
      'Obesity',
      'Hypertension',
      'Hormonal Disorder',
      'Anaemia',
      'Lower Back Pain',
      'Low Blood Pressure',
      'Skin Disorder',
      'Mood Disorder',
      'Detoxification',
      'Shoulder Pain',
      'Kneel Pain',
      'Relationship Issues',
      'Emotional Disorder'
    ]),
    Menu(title: 'Healing Therapies', options: [
      "Personal Well Being",
      "Family Well Being",
      "Professional Well Being"
    ]),
  ];

  void _updateSelectedOption(String title, String? newValue) {
    setState(() {
      switch (title) {
        case 'Days':
          days = newValue;
          break;
        case 'Types':
          types = newValue;
          break;
        case 'Help With Us':
          helpWithUs = newValue;
          break;
        case 'Diseases':
          diseases = newValue;
          break;
        case 'Healing Therapies':
          healingTherapies = newValue;
          break;
      }
    });
  }

  String? _getSelectedOption(String title) {
    switch (title) {
      case 'Days':
        return days;
      case 'Types':
        return types;
      case 'Help With Us':
        return helpWithUs;
      case 'Diseases':
        return diseases;
      case 'Healing Therapies':
        return healingTherapies;
      default:
        return null;
    }
  }

  void navigateBasedOnSelection(BuildContext context) {
    Widget nextPage;

    switch (healingTherapies) {
      case 'Personal Well Being':
        nextPage = const PersonalWellBeing(); // Replace with your actual page
        break;
      case 'Family Well Being':
        nextPage = const FamilyWellBeing(); // Replace with your actual page
        break;
      case 'Professional Well Being':
        nextPage = const ProfessionalWellBeing(); // Replace with your actual page
        break;

      default:
        // Default page or error handling
        nextPage = const Scaffold(
            body: Center(
                child: Text(
                    'No selection made or page for the selection does not exist.')));
    }

    Navigator.push(context, MaterialPageRoute(builder: (context) => nextPage));
  }

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double bannerFontSize = width > 600 ? 48 : 14; // 6% of screen width
    double bannerHeight = width > 600 ? 600 : 330;
    double titleFontSize = width * 0.03;
    bool isLargeScreen = width > 600;
    bool isMobile = width < 600;
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
        child: GetBuilder<CorporateController>(
          builder: (CorporateController) => Column(
            children: [
              const Header(),
              Container(
                width: width,
                height: bannerHeight,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            CorporateController.corporateBannerImage),
                        fit: BoxFit.fill)),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 20),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                        textAlign: TextAlign.center,
                        "Seamless Stays, Stellar Success: Elevate \nYour Corporate Experience",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(
                                color: Colors.white,
                                fontSize: bannerFontSize,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w900)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  "CORPORATE STAY",
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: titleFontSize,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: width > 600 ? width * 0.7 : width,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Experience comfort redefined with our diverse range of accommodations catering to every preference. From cozy singles to spacious villas, find your perfect retreat amidst lush surroundings. Whether it's a solo escape, a family getaway, or a shared adventure with friends, our array of rooms—single, double, triple, villas, cottages, and co-sharing spaces—offer a blend of luxury, convenience, and personalized comfort for an unforgettable stay.",
                    textAlign: TextAlign.justify,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: kDarkGrey,
                        fontSize: width > 600 ? 24 : 10,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 80,
                width: isLargeScreen ? width * 0.7 : width - 30,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ...menus.map((menu) {
                        return Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 2), // Margin between dropdowns
                          child: DropdownButton<String>(
                            isExpanded: false,
                            // Not expanding in mobile view to save space
                            underline: Container(),
                            hint: Text(
                              menu.title,
                              style: TextStyle(
                                fontSize: width > 600
                                    ? 20
                                    : 10, // Smaller text for mobile view
                              ),
                            ),
                            value: _getSelectedOption(menu.title),
                            onChanged: (String? newValue) {
                              setState(() =>
                                  _updateSelectedOption(menu.title, newValue));
                            },
                            items: menu.options
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: const TextStyle(
                                    fontSize:
                                        14, // Smaller text for mobile view
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        );
                      }),
                      Container(
                        margin: const EdgeInsets.only(
                            left: 5), // Adds spacing before the search icon
                        decoration: BoxDecoration(
                          color: const Color(0xFF233D63),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: IconButton(
                          iconSize: 24,
                          icon: const Icon(Icons.search, color: Colors.white),
                          onPressed: () => navigateBasedOnSelection(context),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: isMobile ? width * 0.7 : width,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: CorporateController.imageList.length,
                  itemBuilder: (BuildContext context, int index) => isMobile
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            Text(CorporateController.title[index],
                                style: Theme.of(context).textTheme.titleLarge),
                            const SizedBox(height: 10),
                            Text(CorporateController.smalltitle[index],
                                style: Theme.of(context).textTheme.titleSmall),
                            const SizedBox(
                              height: 10,
                            ),
                            Image.asset(CorporateController.imageList[index],
                                width: width),
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 10, bottom: 20),
                              child: Text(CorporateController.subtitle[index],
                                  textAlign: TextAlign.justify,
                                  style:
                                      Theme.of(context).textTheme.bodyMedium),
                            ),
                            Container(
                              width: width *
                                  (width <= 600
                                      ? 0.8
                                      : 0.2), // Adjust width based on screen size
                              height: 1,
                              color: kLightGrey,
                              margin: const EdgeInsets.symmetric(vertical: 20),
                            ),
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
                                Image.asset(
                                    CorporateController.imageList[index],
                                    width: width * 0.35),
                              if (index % 2 != 0) const SizedBox(width: 20),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(CorporateController.title[index],
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineLarge),
                                    Text(CorporateController.smalltitle[index],
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
                                    Text(CorporateController.subtitle[index],
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
                                Image.asset(
                                    CorporateController.imageList[index],
                                    width: width * 0.35),
                            ],
                          ),
                        ),
                ),
              ),
              const SizedBox(
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
                        image: AssetImage(CorporateController
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
              const SizedBox(
                height: 20.0,
              ),
              const Benefits(),
              const SizedBox(
                height: 20.0,
              ),
              Wrap(
                spacing: 10, // Space between cards
                runSpacing: 40, // Space between rows
                children: cardDetails
                    .map((detail) => newcard(context, detail))
                    .toList(),
              ),
              const SizedBox(
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

class Menu {
  final String title;
  final List<String> options;

  Menu({required this.title, required this.options});
}
