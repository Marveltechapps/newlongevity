import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:longevity_life/Route/route_name.dart';
import 'drawer.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 770;
    return AppBar(
      toolbarHeight: 100,
      elevation: 0,
      titleSpacing: 0,
      automaticallyImplyLeading: isMobile,
      leading: isMobile
          ? IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CustomAppDrawer()),
                );
              },
            )
          : null,
      title: isMobile
          ?
          // ? InkWell(
          //     onTap: () => Get.toNamed(homeScreen),
          //     child: Center(
          //       child: Text(
          //         'LONGEVITYLYF',
          //         style: GoogleFonts.cinzelDecorative(
          //           textStyle: const TextStyle(
          //             fontSize: 24, // Adjust the size as needed
          //             fontWeight: FontWeight.w900,
          //             color: Colors.black, // Adjust the color as needed
          //           ),
          //         ),
          //       ),
          //     ),
          //   )
          Center(
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
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    // Handle tap
                    Get.toNamed(homeScreen);
                  },
                  child: Image.asset(
                    'assets/Logo.png', // Replace with your asset image path
                    width: 120, // Set your width
                    height: 100, // Set your height
                  ),
                ),
                PopupMenuButton(
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                      onTap: () => Get.toNamed(wellnessScreen),
                      child: Text("WELLNESS STAY",
                          style: Theme.of(context).textTheme.displaySmall),
                    ),
                    PopupMenuItem(
                      onTap: () => Get.toNamed(leisureStayScreen),
                      child: Text("LEISURE STAY",
                          style: Theme.of(context).textTheme.displaySmall),
                    ),
                  ],
                  icon: Text("STAY",
                      style: Theme.of(context).textTheme.displaySmall),
                ),
                TextButton(
                    onPressed: () => Get.toNamed(corporateStayScreen),
                    child: Text("CORPORATE",
                        style: Theme.of(context).textTheme.displaySmall)),
                TextButton(
                    onPressed: () => Get.toNamed(functionHallScreen),
                    child: Text("FUNCTION HALL",
                        style: Theme.of(context).textTheme.displaySmall)),
                TextButton(
                    onPressed: () => Get.toNamed(nomadStayScreen),
                    child: Text("NOMAD STAY",
                        style: Theme.of(context).textTheme.displaySmall)),
                TextButton(
                    onPressed: () => Get.toNamed(themeParkScreen),
                    child: Text("THEME PARK",
                        style: Theme.of(context).textTheme.displaySmall)),
                TextButton(
                    onPressed: () => Get.toNamed(sportScreen),
                    child: Text("SPORTS",
                        style: Theme.of(context).textTheme.displaySmall)),
                TextButton(
                    onPressed: () => Get.toNamed(facilityScreen),
                    child: Text("FACILITIES",
                        style: Theme.of(context).textTheme.displaySmall)),
              ],
            ),
      actions: isMobile
          ? null
          : [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("BOOK NOW",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white)),
                ),
              ),
            ],
    );
  }
}
