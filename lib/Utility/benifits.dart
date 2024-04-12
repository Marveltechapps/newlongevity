import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:longevity_life/Public/constant.dart';

class Benefits extends StatelessWidget {
  const Benefits({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> cardsData = [
      {
        'image': 'assets/benefits1.png',
        'text': '24-hour access to our fitness centre',
      },
      {
        'image': 'assets/benefits2.png',
        'text': 'Access to our exclusive activities and programs',
      },
      {
        'image': 'assets/benefits3.png',
        'text': 'Access to business center as an alternative workspace',
      },
      {
        'image': 'assets/benefits4.png',
        'text': 'Access to any one of our other wellness packages',
      },
    ];
    return GridView.builder(
      shrinkWrap: true, // Add this
      physics: const NeverScrollableScrollPhysics(), // And this
      padding: const EdgeInsets.all(20.0),
      itemCount: cardsData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 2 / 2.25,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: kmaroon,
                  child: Center(
                    child: Image.asset(cardsData[index]['image'],
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 300,
                  alignment: Alignment.center,
                  color: Colors.white,
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    cardsData[index]['text'],
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

//card section for leisure
Widget newcard(BuildContext context, Map<String, String> detail) {
  final width1 = MediaQuery.of(context).size.width;
  return Card(
    child: Container(
      color: const Color(0xFFDCABAB),
      height: 250,
      width: width1 > 600
          ? width1 / 4 - 50
          : width1 - 50, // Half the width of the screen minus padding
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            clipBehavior:
                Clip.none, // Prevents clipping of the Positioned child.
            children: [
              Container(
                height: 50,
                decoration: const BoxDecoration(
                  color: Color(0xFFDCABAB), // This container's color
                ),
              ),
              Positioned(
                top: -40, // Adjust the position as needed
                child: Container(
                  width: 100, // Outer width including the border
                  height: 100, // Outer height including the border
                  padding:
                      const EdgeInsets.all(3), // Adjust the border width here
                  decoration: BoxDecoration(
                    // Ensure the background is transparent
                    color: kmaroon,
                    shape: BoxShape
                        .circle, // This will ensure the container is circular
                    border: Border.all(
                      color: kmaroon, // Specify the border color
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
                        child: SvgPicture.asset(
                          detail["image"]!,
                          fit: BoxFit.cover,
                          height: 100,
                          width: double.infinity,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Text(
                  detail['title']!,
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  detail['subtitle']!,
                  style: Theme.of(context).textTheme.labelSmall,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
