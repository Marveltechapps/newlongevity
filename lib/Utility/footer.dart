import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:longevity_life/Public/constant.dart';

import '../Route/route_name.dart';
import '../View/special_screen.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // Check if the width is less than a certain value, let's say 600 for a typical mobile screen in portrait mode.
        bool isMobileView = constraints.maxWidth < 600;

        return Container(
          width: constraints.maxWidth,
          height: isMobileView
              ? 600
              : 300, // Increase height for mobile view to accommodate stacked layout.
          color: kpink,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(top: 20),
          child: isMobileView
              ? buildMobileLayout(context)
              : buildDesktopLayout(context),
        );
      },
    );
  }

  Widget buildDesktopLayout(BuildContext context) {
    // The original layout for non-mobile screens
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              // Handle tap
                             // Get.toNamed(homeScreen);
                             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SpecialScreen()));
                            },
                            child: Image.asset(
                              'assets/Logo.png', // Replace with your asset image path
                              width: 120, // Set your width
                              height: 120, // Set your height
                            ),
                          ),
                        )),
                    Text(
                        "Unlock the secrets to a \nvibrant and fulfilling longevity \nwith a lifestyle centered on \nwellness, purpose, and \nresilience",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                fontSize: 14,
                                color: kDarkGrey,
                                fontWeight: FontWeight.w500)),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Image.asset(kFooterImage, width: 150),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text("Company",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color: kDarkGrey,
                                  fontWeight: FontWeight.w600)),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text("HOME",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  fontSize: 14,
                                  color: kDarkGrey,
                                  fontWeight: FontWeight.w500)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                        onTap: () {},
                        child: Text("ABOUT US",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                    fontSize: 14,
                                    color: kDarkGrey,
                                    fontWeight: FontWeight.w500)),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text("STAY",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  fontSize: 14,
                                  color: kDarkGrey,
                                  fontWeight: FontWeight.w500)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                        onTap: () {},
                        child: Text("CORPORATE",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                    fontSize: 14,
                                    color: kDarkGrey,
                                    fontWeight: FontWeight.w500)),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text("FUNCTION HALL",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  fontSize: 14,
                                  color: kDarkGrey,
                                  fontWeight: FontWeight.w500)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: InkWell(
                        onTap: () {},
                        child: Text("NOMAD STAY",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                    fontSize: 14,
                                    color: kDarkGrey,
                                    fontWeight: FontWeight.w500)),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text("Programmes",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color: kDarkGrey,
                                  fontWeight: FontWeight.w600)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                        onTap: () {},
                        child: Text("FACILITIES",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                    fontSize: 14,
                                    color: kDarkGrey,
                                    fontWeight: FontWeight.w500)),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text("WELLNESS PROGRAM",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  fontSize: 14,
                                  color: kDarkGrey,
                                  fontWeight: FontWeight.w500)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                        onTap: () {},
                        child: Text("CORPORATE PROGRAM",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                    fontSize: 14,
                                    color: kDarkGrey,
                                    fontWeight: FontWeight.w500)),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text("THEME PARK",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  fontSize: 14,
                                  color: kDarkGrey,
                                  fontWeight: FontWeight.w500)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                        onTap: () {},
                        child: Text("ENERGETIC SPORTS",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                    fontSize: 14,
                                    color: kDarkGrey,
                                    fontWeight: FontWeight.w500)),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text("Our Brand",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color: kDarkGrey,
                                  fontWeight: FontWeight.w600)),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text("DOLPHIN CITY",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  fontSize: 14,
                                  color: kDarkGrey,
                                  fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text("Get Help",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color: kDarkGrey,
                                  fontWeight: FontWeight.w600)),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text("PRIVACY POLICY",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  fontSize: 14,
                                  color: kDarkGrey,
                                  fontWeight: FontWeight.w500)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: InkWell(
                        onTap: () {},
                        child: Text("TERMS OF USE",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                    fontSize: 14,
                                    color: kDarkGrey,
                                    fontWeight: FontWeight.w500)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: InkWell(
                        onTap: () {},
                        child: Text("FAQ",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                    fontSize: 14,
                                    color: kDarkGrey,
                                    fontWeight: FontWeight.w500)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              color: kpeach,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: InkWell(
                      onTap: () {
                        // Handle tap
                        Get.toNamed(homeScreen);
                      },
                      child: Image.asset(
                        'assets/Logo.png', // Replace with your asset image path
                        width: 40, // Set your width
                        height: 40, // Set your height
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Text("Copyright All Rights Reserved © 2016 Dolphin City",
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 14,
                          color: kLightGrey,
                          fontWeight: FontWeight.w700)),
                ],
              ),
            ),
          ]),
    );
  }

  Widget buildMobileLayout(BuildContext context) {
    // A more vertical layout for mobile screens
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      // Use SingleChildScrollView to make the content scrollable on small devices.
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: InkWell(
                  onTap: () {
                    // Handle tap
                    Get.toNamed(homeScreen);
                  },
                  child: Image.asset(
                    'assets/Logo.png', // Replace with your asset image path
                    width: 120, // Set your width
                    height: 120, // Set your height
                  ),
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
                textAlign: TextAlign.center,
                "Unlock the secrets to a \n vibrant and fulfilling longevity \n with a lifestyle centered on \n wellness, purpose, and \nresilience",
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontSize: 16,
                    color: kDarkGrey,
                    fontWeight: FontWeight.w500)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Image.asset(kFooterImage, width: 150),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text("Company",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color: kblack,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                        onTap: () {},
                        child: Text("HOME",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                    fontSize: 14,
                                    color: kDarkGrey,
                                    fontWeight: FontWeight.w500)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                        onTap: () {},
                        child: Text("ABOUT US",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                    fontSize: 14,
                                    color: kDarkGrey,
                                    fontWeight: FontWeight.w500)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                        onTap: () {},
                        child: Text("STAY",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                    fontSize: 14,
                                    color: kDarkGrey,
                                    fontWeight: FontWeight.w500)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                        onTap: () {},
                        child: Text("CORPORATE",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                    fontSize: 14,
                                    color: kDarkGrey,
                                    fontWeight: FontWeight.w500)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                        onTap: () {},
                        child: Text("FUNCTION HALL",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                    fontSize: 14,
                                    color: kDarkGrey,
                                    fontWeight: FontWeight.w500)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                        onTap: () {},
                        child: Text("NOMAD STAY",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                    fontSize: 14,
                                    color: kDarkGrey,
                                    fontWeight: FontWeight.w500)),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text("Programmes",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: kblack,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: InkWell(
                      onTap: () {},
                      child: Text("FACILITIES",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  fontSize: 14,
                                  color: kDarkGrey,
                                  fontWeight: FontWeight.w500)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: InkWell(
                      onTap: () {},
                      child: Text("WELLNESS PROGRAM",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  fontSize: 14,
                                  color: kDarkGrey,
                                  fontWeight: FontWeight.w500)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: InkWell(
                      onTap: () {},
                      child: Text("CORPORATE PROGRAM",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  fontSize: 14,
                                  color: kDarkGrey,
                                  fontWeight: FontWeight.w500)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: InkWell(
                      onTap: () {},
                      child: Text("THEME PARK",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  fontSize: 14,
                                  color: kDarkGrey,
                                  fontWeight: FontWeight.w500)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: InkWell(
                      onTap: () {},
                      child: Text("ENERGETIC SPORTS",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  fontSize: 14,
                                  color: kDarkGrey,
                                  fontWeight: FontWeight.w500)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(""),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text("Our Brand",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: kblack,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: InkWell(
                      onTap: () {},
                      child: Text("DOLPHIN CITY",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  fontSize: 14,
                                  color: kDarkGrey,
                                  fontWeight: FontWeight.w500)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(""),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(""),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text("Get Help",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: kblack,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: InkWell(
                      onTap: () {},
                      child: Text("PRIVACY POLICY",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  fontSize: 14,
                                  color: kDarkGrey,
                                  fontWeight: FontWeight.w500)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: InkWell(
                      onTap: () {},
                      child: Text("TERMS OF USE",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  fontSize: 14,
                                  color: kDarkGrey,
                                  fontWeight: FontWeight.w500)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: InkWell(
                      onTap: () {},
                      child: Text("FAQ",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  fontSize: 14,
                                  color: kDarkGrey,
                                  fontWeight: FontWeight.w500)),
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
            color: kpeach,
            child: Row(
              children: [
                Expanded(
                    // or Flexible
                    child: Center(
                  child: InkWell(
                    onTap: () {
                      // Handle tap
                      Get.toNamed(homeScreen);
                    },
                    child: Image.asset(
                      'assets/Logo.png', // Replace with your asset image path
                      width: 40, // Set your width
                      height: 40, // Set your height
                    ),
                  ),
                )),
                Expanded(
                  // or Flexible
                  child: Text(
                      "Copyright All Rights Reserved © 2016 Dolphin City",
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 14,
                          color: kLightGrey,
                          fontWeight: FontWeight.w700)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
