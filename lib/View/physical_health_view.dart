import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:longevity_life/Controller/physical_health_controller.dart';
import 'package:longevity_life/Public/constant.dart';
import 'package:longevity_life/Route/route_name.dart';
import 'package:longevity_life/Utility/footer.dart';
import 'package:longevity_life/Utility/header.dart';
import 'package:longevity_life/Utility/search.dart';

class PhysicalHealthView extends StatelessWidget {
  const PhysicalHealthView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: GetBuilder<PhysicalHealthController>(
          builder: (physicalHealthController) => Column(
            children: [
              const Header(),
              Container(
                width: width,
                height: 600,
                alignment: Alignment.center,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage(physicalHealthController.physicalHealthBannerImage), fit: BoxFit.fill)),
                child: Text("Unlock Vitality: Transform Your Physical Health Today.",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white, fontSize: 48, fontStyle: FontStyle.italic)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: Text("PHYSICAL HEALTH", style: Theme.of(context).textTheme.titleSmall),
              ),
              Container(
                width: width * 0.6,
                alignment: Alignment.center,
                child: Text(
                  "Prioritize your physical well-being with our comprehensive approach to health at the resort. Experience personalized fitness programs, expert guidance, and access to state-of-the-art facilities aimed at enhancing your physical vitality.",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: kDarkGrey),
                ),
              ),
              Container(margin: const EdgeInsets.fromLTRB(20, 20, 20, 40), width: width * 0.32, child: const Search()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: width * 0.42,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: physicalHealthController.imageList.length,
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
                                  Image.asset(physicalHealthController.imageList[index], width: width * 0.15, height: 200),
                                  Container(
                                    width: width * 0.25,
                                    margin: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(physicalHealthController.titleList[index], style: Theme.of(context).textTheme.titleSmall),
                                        Text("7 Therapy With Regular Activity",
                                            style: Theme.of(context).textTheme.displaySmall!.copyWith(color: kLightGrey, fontWeight: FontWeight.bold)),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 10),
                                          child: Text("Therapy: 2 Hour | Other: 3 Hour",
                                              style: Theme.of(context).textTheme.displaySmall!.copyWith(color: kLightGrey, fontWeight: FontWeight.bold)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 20),
                                          child: Text(physicalHealthController.subtitleList[index],
                                              style: Theme.of(context).textTheme.displaySmall!.copyWith(color: kLightGrey)),
                                        ),
                                        Text("Reserve your spot now to start your path to enduring well-being!",
                                            style: Theme.of(context).textTheme.displaySmall!.copyWith(color: kLightGrey)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: width * 0.4,
                                height: 1,
                                color: kLightGrey,
                                margin: const EdgeInsets.symmetric(vertical: 20),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Text("What we offer?", style: Theme.of(context).textTheme.bodyLarge),
                              ),
                              SizedBox(
                                width: width * 0.4,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(physicalHealthController.physicalHealth1Image, width: 25),
                                            Text("Full Board (Breakfast, Lunch and Dinner)",
                                                style: Theme.of(context).textTheme.displaySmall!.copyWith(color: kLightGrey)),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 10),
                                          child: Row(
                                            children: [
                                              Image.asset(physicalHealthController.physicalHealth2Image, width: 25),
                                              Text("Common yoga in the morning and evening",
                                                  style: Theme.of(context).textTheme.displaySmall!.copyWith(color: kLightGrey)),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(physicalHealthController.physicalHealth3Image, width: 25),
                                            Text("Nutritious food", style: Theme.of(context).textTheme.displaySmall!.copyWith(color: kLightGrey)),
                                          ],
                                        ),
                                      ],
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(kAmber)),
                                      child: Text("SELECT", style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Check in - Check out Date", style: Theme.of(context).textTheme.displaySmall),
                              Text("4 Night", style: Theme.of(context).textTheme.displaySmall),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text("0 Adults ,  0 Children", style: Theme.of(context).textTheme.displaySmall),
                          ),
                          Text("Types of Room", style: Theme.of(context).textTheme.displaySmall),
                          Container(
                            width: width * 0.2,
                            height: 1,
                            color: kLightGrey,
                            margin: const EdgeInsets.symmetric(vertical: 20),
                          ),
                          Container(
                            width: width * 0.2,
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text("Select a rate to continue", style: Theme.of(context).textTheme.displaySmall),
                          ),
                          SizedBox(
                            width: width * 0.2,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text("BOOK NOW", style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: Text("WE ARE OFFERING ", style: Theme.of(context).textTheme.titleSmall),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => Get.toNamed(nutritionScreen),
                    child: Container(
                      width: width * 0.1,
                      height: 200,
                      alignment: Alignment.bottomCenter,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration:
                          BoxDecoration(image: DecorationImage(image: AssetImage(physicalHealthController.physicalHealthNutritionImage), fit: BoxFit.fill)),
                      child: Container(
                        width: width * 0.1,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
                        child: Text("NUTRITION", style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white)),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => Get.toNamed(restaurantScreen),
                    child: Container(
                      width: width * 0.1,
                      height: 200,
                      alignment: Alignment.bottomCenter,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration:
                          BoxDecoration(image: DecorationImage(image: AssetImage(physicalHealthController.physicalHealthRestarantsImage), fit: BoxFit.fill)),
                      child: Container(
                        width: width * 0.1,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
                        child: Text("RESTARANTS", style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white)),
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
