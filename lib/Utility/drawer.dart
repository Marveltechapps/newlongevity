import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Route/route_name.dart';

class CustomAppDrawer extends StatelessWidget {
  const CustomAppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Drawer(
      child: Container(
        width: screenWidth / 2,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)
                  // Add decoration if needed
                  ),
              child: Column(
                children: [
                  // Text(
                  //   'LONGEVITYLYF',
                  //   style: GoogleFonts.cinzelDecorative(
                  //     textStyle: const TextStyle(
                  //       fontSize: 24, // Adjust the size as needed
                  //       fontWeight: FontWeight.w900,
                  //       color: Colors.black, // Adjust the color as needed
                  //     ),
                  //   ),
                  // ),

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
                ],
              ),
            ),
            ListTile(
              title:
                  Text('STAY', style: Theme.of(context).textTheme.titleMedium),
              onTap: () {
                // Maybe expand to show more options or navigate to a general "Stay" page
              },
            ),
            ListTile(
              title: const Text('Wellness stay'),
              onTap: () => Navigator.pushNamed(context, '/wellness'),
            ),
            ListTile(
              title: const Text('Leisure stay'),
              onTap: () => Navigator.pushNamed(context, '/leisure_stay'),
            ),
            // Corporate Section
            ListTile(
              title: const Text('Corporate stay'),
              onTap: () => Navigator.pushNamed(context, '/corporate_stay'),
            ),

            // Add other ListTiles for navigation
            ListTile(
              title: const Text('Function Hall'),
              onTap: () => Navigator.pushNamed(context, '/function_hall'),
            ),
            ListTile(
              title: const Text('Nomad Stay'),
              onTap: () => Navigator.pushNamed(context, '/nomad_stay'),
            ),
            ListTile(
              title: const Text('Theme Park'),
              onTap: () => Navigator.pushNamed(context, '/theme_park'),
            ),
            ListTile(
              title: const Text('Energized Sport'),
              onTap: () => Navigator.pushNamed(context, '/sport_activity'),
            ),
            ListTile(
              title: const Text('Facilities'),
              onTap: () => Navigator.pushNamed(context, '/facility'),
            ),
            ListTile(
              leading: const Icon(Icons.close),
              title: const Text('Close'),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
