import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:longevity_life/Controller/corporate_wellness_controller.dart';
import 'package:longevity_life/Public/constant.dart';
import 'package:longevity_life/Utility/footer.dart';
import 'package:longevity_life/Utility/header.dart';
import 'package:longevity_life/Utility/search.dart';
import '../Utility/benifits.dart';

class CorporateWellnessView extends StatelessWidget {
  CorporateWellnessView({super.key});

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

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double bannerFontSize = width > 600 ? 48 : 14; // 6% of screen width
    double bannerHeight = width > 600 ? 600 : 330;
    double titleFontSize = width * 0.03;

    return Scaffold(
      body: SingleChildScrollView(
        child: GetBuilder<CorporateWellnessController>(
          builder: (corporateWellnessController) => Column(
            children: [
              const Header(),
              Container(
                width: width,
                height: bannerHeight,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(corporateWellnessController
                            .corporateWellnessBannerImage),
                        fit: BoxFit.fill)),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 20),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                        textAlign: TextAlign.center,
                        "Recharge, rejuvenate and excel with our \ncorporate wellness programs",
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
                child: Text("CORPORATE WELLNESS",
                    style: TextStyle(
                        fontSize: titleFontSize,
                        color: kred,
                        fontWeight: FontWeight.w700)),
              ),
              Container(
                width: width > 600 ? width * 0.7 : width - 10,
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Indulge in a holistic retreat tailored for corporate wellness, offering a blend of personalized family, professional, and personal development programs. Our packages include mental and physical therapy, mindfulness sessions, relationship counseling, stress management, and productivity enhancement workshops. Rediscover balance, strength, and harmony for a rejuvenated professional journey.",
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kDarkGrey,
                      fontSize: width > 600 ? 24 : 10,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const Search(),
              if (width <= 600)
                _buildSelectAndBookNowSection(context,
                    width), // For mobile, show select and book now together at the bottom
              // Your existing widgets end
              if (width > 600)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: corporateWellnessController.imageList.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) => Card(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                        corporateWellnessController
                                            .imageList[index],
                                        width: width * 0.15,
                                        height: 200),
                                    const SizedBox(
                                        width: 10), // Use SizedBox for spacing
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              corporateWellnessController
                                                  .titleList[index],
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleSmall),
                                          Text("(3,330Sq.ft / 330Sq.m)",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displaySmall!
                                                  .copyWith(
                                                      color: kLightGrey,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Text(
                                                "Queen bed | Shower | Lake view",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displaySmall!
                                                    .copyWith(
                                                        color: kLightGrey,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 20),
                                            child: Text(
                                                "Step into this inviting single bedroom, where a luxurious queen-sized bed beckons, accompanied by a private shower for your comfort, But the best part? The amazing view of the peaceful lake outside the window. It's a quiet place where you can relax and enjoy nature's beauty.",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displaySmall!
                                                    .copyWith(
                                                        color: kLightGrey)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        height: 1,
                                        color: kLightGrey,
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 20),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Text("What we offer?",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                  corporateWellnessController
                                                      .corporate1Image,
                                                  width: 25),
                                              Text(
                                                  "Full Board (Breakfast, Lunch and Dinner)",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .displaySmall!
                                                      .copyWith(
                                                          color: kLightGrey)),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                    corporateWellnessController
                                                        .corporate2Image,
                                                    width: 25),
                                                Text(
                                                    "Common yoga in the morning and evening",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .displaySmall!
                                                        .copyWith(
                                                            color: kLightGrey)),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                  corporateWellnessController
                                                      .corporate3Image,
                                                  width: 25),
                                              Text("Nutritious food",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .displaySmall!
                                                      .copyWith(
                                                          color: kLightGrey)),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: const ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll(kAmber)),
                                      child: Text("SELECT",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(color: Colors.white)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    _buildBookNowCard(context, width),
                  ],
                ),

              const Padding(
                padding: EdgeInsets.only(top: 20, bottom: 10),
                child: Text("BENEFITS",
                    style: TextStyle(fontSize: 20, color: kred)),
              ),
              SizedBox(height: 20),

              Wrap(
                spacing: 10, // Space between cards
                runSpacing: 40, // Space between rows
                children: cardDetails
                    .map((detail) => newcard(context, detail))
                    .toList(),
              ),
              // const Benefits(),

              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildSelectAndBookNowSection(BuildContext context, double width) {
  // Combine the select section with the book now button for a cohesive mobile experience
  return Column(
    children: [
      _buildSelectSection(context,
          width), // Assuming you have a method for the select section similar to the book now card
      _buildBookNowCard(context, width), // Reuse the book now card method
    ],
  );
}

Widget _buildSelectSection(BuildContext context, double width) {
  // Placeholder for your select section implementation
  return GetBuilder<CorporateWellnessController>(
      builder: (corporateWellnessController) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: corporateWellnessController.imageList.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) => Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                  corporateWellnessController.imageList[index],
                                  width: width * 0.15,
                                  height: 200),
                              const SizedBox(
                                  width: 10), // Use SizedBox for spacing
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        corporateWellnessController
                                            .titleList[index],
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall),
                                    Text("(3,330Sq.ft / 330Sq.m)",
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall!
                                            .copyWith(
                                                color: kLightGrey,
                                                fontWeight: FontWeight.bold)),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: Text(
                                          "Queen bed | Shower | Lake view",
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall!
                                              .copyWith(
                                                  color: kLightGrey,
                                                  fontWeight: FontWeight.bold)),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 20),
                                      child: Text(
                                          "Step into this inviting single bedroom, where a luxurious queen-sized bed beckons, accompanied by a private shower for your comfort, But the best part? The amazing view of the peaceful lake outside the window. It's a quiet place where you can relax and enjoy nature's beauty.",
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall!
                                              .copyWith(color: kLightGrey)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 1,
                                  color: kLightGrey,
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 20),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text("What we offer?",
                                style: Theme.of(context).textTheme.bodyLarge),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SingleChildScrollView(
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                              corporateWellnessController
                                                  .corporate1Image,
                                              width: 25),
                                          Text(
                                              "Full Board (Breakfast, Lunch and Dinner)",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displaySmall!
                                                  .copyWith(color: kLightGrey)),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                                corporateWellnessController
                                                    .corporate2Image,
                                                width: 25),
                                            Text(
                                                "Common yoga in the morning and evening",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displaySmall!
                                                    .copyWith(
                                                        color: kLightGrey)),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                              corporateWellnessController
                                                  .corporate3Image,
                                              width: 25),
                                          Text("Nutritious food",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displaySmall!
                                                  .copyWith(color: kLightGrey)),
                                        ],
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: const ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    kAmber)),
                                        child: Text("SELECT",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge!
                                                .copyWith(color: Colors.white)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ));
}

Widget _buildBookNowCard(BuildContext context, double width) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Check in - Check out Date",
                  style: Theme.of(context).textTheme.displaySmall),
              Text("4 Night", style: Theme.of(context).textTheme.displaySmall),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text("0 Adults ,  0 Children",
                style: Theme.of(context).textTheme.displaySmall),
          ),
          Text("Types of Room",
              style: Theme.of(context).textTheme.displaySmall),
          Container(
            width: width *
                (width <= 600 ? 0.8 : 0.2), // Adjust width based on screen size
            height: 1,
            color: kLightGrey,
            margin: const EdgeInsets.symmetric(vertical: 20),
          ),
          Container(
            width: width *
                (width <= 600 ? 0.8 : 0.2), // Adjust width based on screen size
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text("Select a rate to continue",
                style: Theme.of(context).textTheme.displaySmall),
          ),
          SizedBox(
            width: width *
                (width <= 600 ? 0.8 : 0.2), // Adjust width based on screen size
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
      ),
    ),
  );
}
