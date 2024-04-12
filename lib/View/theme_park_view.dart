import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:longevity_life/Controller/theme_park_controller.dart';
import 'package:longevity_life/Public/constant.dart';
import 'package:longevity_life/Utility/footer.dart';
import 'package:longevity_life/Utility/header.dart';

class ThemeParkView extends StatelessWidget {
  const ThemeParkView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double bannerFontSize = width > 600 ? 48 : 14; // 6% of screen width
    double bannerHeight = width > 600 ? 600 : 330;
    double titleFontSize = width * 0.05;
    double bodyFontSize = width > 600 ? 24 : 12;

    return Scaffold(
      body: SingleChildScrollView(
        child: GetBuilder<ThemeParkController>(
          builder: (themeParkController) => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Header(),
              Container(
                width: width,
                height: bannerHeight,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(themeParkController.themeParkBannerImage),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 20),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Dive into Adventure: Where Thrills Await \nBeyond the Horizon",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(
                              fontSize: bannerFontSize,
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
              ),
              Container(
                width: width > 600 ? width * 0.7 : width - 30,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  "Embark on an Unforgettable Journey: Venture 15 nautical miles into the sea to discover our extraordinary theme park aboard a ship. Dive into excitement at our water park, complete with thrilling live entertainment and cutting-edge smart-screen technology. We are gearing up to make a big splash in the realm of water recreation, blending state-of-the-art technology with traditional charm to create a paradise of water entertainment. With a subtle combination of thrill and fun, our park promises an unforgettable experience for all ages.",
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kblack,
                      fontSize: bodyFontSize,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: width,
                  height: width * 0.6, // Adjust as needed
                  color: Colors.grey, // Placeholder color
                  child: Image.asset(
                    'assets/theme_park_commingsoon.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: Text("Gallery",
                    style: TextStyle(fontSize: titleFontSize, color: korange)),
              ),
              SizedBox(
                width: width * 0.9,
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: themeParkController.themeParkImageList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: width > 600 ? 4 : 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (BuildContext context, int index) => Image.asset(
                      themeParkController.themeParkImageList[index]),
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
