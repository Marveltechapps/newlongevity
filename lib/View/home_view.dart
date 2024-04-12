import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:longevity_life/Controller/home_controller.dart';
import 'package:longevity_life/Public/constant.dart';
import 'package:longevity_life/Route/route_name.dart';
import 'package:longevity_life/Utility/footer.dart';
import 'package:longevity_life/Utility/header.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool isMobile = width < 600;

    double bannerFontSize = width > 600 ? 48 : 14; // 6% of screen width
    double bannerHeight = width > 600 ? 600 : 330;
    double titleFontSize = width * 0.03;
    double alterFontSize = width > 600 ? 30 : 12;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: GetBuilder<HomeController>(
            builder: (homeController) => Column(
              children: [
                const Header(),
                CarouselSlider.builder(
                  itemCount: homeController.imageList.length,
                  options: CarouselOptions(
                    height: bannerHeight,
                    autoPlay: true,
                    viewportFraction: 1,
                    autoPlayInterval: const Duration(seconds: 2),
                    scrollPhysics: const NeverScrollableScrollPhysics(),
                  ),
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      Container(
                    width: width,
                    height: bannerHeight,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage(homeController.imageList[itemIndex]),
                            fit: BoxFit.fill)),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20, bottom: 20),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(homeController.titleList[itemIndex],
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                    color: Colors.white,
                                    fontSize: bannerFontSize,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w900)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Text("longevitylyf",
                      style:
                          TextStyle(fontSize: titleFontSize, color: khometext)),
                ),
                Container(
                  width: width > 600 ? width * 0.7 : width - 20,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Our Five Star Beach Hotel & Resort is to be situated in 20.67 acres at East Coast Road (ECR), Chennai, Tamilnadu, India. It is to offer a host of services and facilities to corporate as well as leisure travellers with state of art facilities for its guests blending culture and creativity. Luxurious and spacious rooms, sumptuous delicacies, ample recreation option, fabulous conference facilities, the natural sea view and the scenic  lake front would be the characteristics of this project.",
                    textAlign: TextAlign.justify,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: kblack,
                        fontSize: width > 600 ? 24 : 10,
                        fontWeight: FontWeight.w500),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Text("Welcome To Our Retreat",
                      style:
                          TextStyle(fontSize: titleFontSize, color: khometext)),
                ),
                ClipRect(
                  child: Image.asset(homeController.videoImage,
                      width: width > 600 ? width * 0.7 : width - 20,
                      height: bannerHeight),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Text("WHAT WE ARE OFFER",
                      style:
                          TextStyle(fontSize: titleFontSize, color: khometext)),
                ),

                //My staggered Grid view

                Padding(
                  padding: const EdgeInsets.all(50),
                  child: StaggeredGrid.count(
                    crossAxisCount: width > 600 ? 4 : 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    children: [
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: InkWell(
                          onTap: () => Get.toNamed(wellnessScreen),
                          child: Container(
                            width: width * 0.16,
                            height: 510,
                            alignment: Alignment.topCenter,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                image: DecorationImage(
                                    image: AssetImage(
                                        homeController.wellnessStayImage),
                                    fit: BoxFit.fill)),
                            child: Container(
                                width: width,
                                height: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5)),
                                child: Text("Wellness Stay",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: Colors.white))),
                          ),
                        ), // Wellness Stay
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1,
                        child: InkWell(
                          onTap: () => Get.toNamed(functionHallScreen),
                          child: Container(
                            width: width * 0.2,
                            height: 250,
                            alignment: Alignment.topCenter,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                image: DecorationImage(
                                    image: AssetImage(
                                        homeController.functionHallImage),
                                    fit: BoxFit.fill)),
                            child: Container(
                                width: width,
                                height: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5)),
                                child: Text("Function Hall",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: Colors.white))),
                          ),
                        ), // Another type of tile
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: InkWell(
                          onTap: () => Get.toNamed(corporateStayScreen),
                          child: Container(
                            width: width * 0.2,
                            height: 250,
                            alignment: Alignment.topCenter,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                image: DecorationImage(
                                    image: AssetImage(
                                        homeController.corporateWellnessImage),
                                    fit: BoxFit.fill)),
                            child: Container(
                                width: width,
                                height: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5)),
                                child: Text("Corporate Wellness",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: Colors.white))),
                          ),
                        ), // Another type of tile
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: InkWell(
                          onTap: () => Get.toNamed(leisureStayScreen),
                          child: Container(
                            width: width * 0.405,
                            height: 250,
                            alignment: Alignment.topCenter,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                image: DecorationImage(
                                    image: AssetImage(
                                        homeController.leisureStayImage),
                                    fit: BoxFit.fill)),
                            child: Container(
                                width: width,
                                height: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5)),
                                child: Text("Leisure Stay",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: Colors.white))),
                          ),
                        ), // Another type of tile
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1,
                        child: InkWell(
                          onTap: () => Get.toNamed(sportScreen),
                          child: Container(
                            width: width * 0.405,
                            height: 250,
                            alignment: Alignment.topCenter,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                image: DecorationImage(
                                    image: AssetImage(
                                        homeController.lakeViewImage),
                                    fit: BoxFit.fill)),
                            child: Container(
                                width: width,
                                height: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5)),
                                child: Text("Lake View Restaurant",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: Colors.white))),
                          ),
                        ), // Another type of tile
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: InkWell(
                          onTap: () => Get.toNamed(sportScreen),
                          child: Container(
                            width: width * 0.16,
                            alignment: Alignment.topCenter,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                image: DecorationImage(
                                    image: AssetImage(
                                        homeController.airwaterSportsImage),
                                    fit: BoxFit.fill)),
                            child: Container(
                                width: width,
                                height: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5)),
                                child: Text("Air & Water Sports",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: Colors.white))),
                          ),
                        ), // Another type of tile
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: InkWell(
                          onTap: () => Get.toNamed(themeParkScreen),
                          child: Container(
                            width: width * 0.2,
                            height: 250,
                            alignment: Alignment.topCenter,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                image: DecorationImage(
                                    image: AssetImage(
                                        homeController.themeParkImage),
                                    fit: BoxFit.fill)),
                            child: Container(
                                width: width,
                                height: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5)),
                                child: Text("Theme Park",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: Colors.white))),
                          ),
                        ), // Another type of tile
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: InkWell(
                          onTap: () => Get.toNamed(sportScreen),
                          child: Container(
                            width: width * 0.2,
                            height: 250,
                            alignment: Alignment.topCenter,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                image: DecorationImage(
                                    image: AssetImage(
                                        homeController.golfCourseImage),
                                    fit: BoxFit.fill)),
                            child: Container(
                                width: width,
                                height: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.5)),
                                child: Text("Golf Course",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: Colors.white))),
                          ),
                        ), // Another type of tile
                      ),

                      // Add more tiles as needed
                    ],
                  ),
                ),

                isMobile
                    ? SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 10),
                              child: Text("Alternative Homes",
                                  style: TextStyle(
                                      fontSize: titleFontSize,
                                      color: khometext)),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: width - 30,
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Text(
                                    "Our mission is to lead the global hospitality industry by providing high-quality, curated, compliant, and efficient alternative accommodations.",
                                    textAlign: TextAlign.justify,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                            color: kblack,
                                            fontSize: width > 600 ? 24 : 10,
                                            fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      )
                    : Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 0.90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 10),
                              child: Text("Alternative Homes",
                                  style: TextStyle(
                                      fontSize: titleFontSize,
                                      color: khometext)),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Text(
                                    "Our mission is to lead the global hospitality industry by providing high-quality, curated, compliant, and efficient alternative accommodations.",
                                    textAlign: TextAlign.justify,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                            color: kblack,
                                            fontSize: width > 600 ? 24 : 10,
                                            fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                const SizedBox(height: 20),

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  child: Row(
                    children: [
                      Expanded(
                        flex: width > 600
                            ? 2
                            : 2, // Adjusting size based on screen width.
                        child: ClipRect(
                          child: Image.asset(
                            homeController.relaxationimg[selectedIndex],
                            fit: BoxFit.fill,
                            width: width > 600 ? 540 : 350,
                            height: width > 600 ? 515 : 250,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        flex: width > 600
                            ? 2
                            : 2, // Adjusting size based on screen width.
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(
                              homeController.relaxationimg.length * 2 - 1,
                              (index) {
                            // Every odd index will be a divider with limited width.
                            if (index.isOdd) {
                              return Padding(
                                padding: EdgeInsets.only(
                                    left: width > 600 ? 10 : 20),
                                // Adjust left padding for responsiveness
                                child: const Divider(
                                  color: kblack,
                                  thickness:
                                      1, // Set the thickness of the divider
                                ),
                              );
                            }
                            // Every even index will be a button.
                            final itemIndex = index ~/ 2;

                            return TextButton(
                              onPressed: () =>
                                  setState(() => selectedIndex = itemIndex),
                              child: Text(
                                homeController.relaxationtitle[itemIndex],
                                style: TextStyle(
                                    fontSize: alterFontSize,
                                    color:
                                        kblack), // Making text size responsive
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),

                const Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
