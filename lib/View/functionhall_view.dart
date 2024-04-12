import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:longevity_life/Controller/functionhall_controller.dart';
import 'package:longevity_life/Public/constant.dart';
import 'package:longevity_life/Utility/footer.dart';
import 'package:longevity_life/Utility/header.dart';

class FunctionHallView extends StatelessWidget {
  const FunctionHallView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double bannerFontSize = width > 600 ? 48 : 14;
    double bannerHeight = width > 600 ? 600 : 330;
    double imgwidth = width > 600 ? width - 260 : width;
    double titleFontSize = width > 600 ? 30 : 14;

    double paddingValue;
    double marginValue;

    if (width < 600) {
      paddingValue = 10;
      marginValue = 10;
    } else if (width < 1200) {
      // Tablet
      paddingValue = 20;
      marginValue = 20;
    } else {
      // Desktop
      paddingValue = 30;
      marginValue = 30;
    }

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
    return Scaffold(
      body: SingleChildScrollView(
        child: GetBuilder<FunctionHallController>(
          builder: (functionHallController) => Column(
            children: [
              const Header(),
              Container(
                width: width,
                height: bannerHeight,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:
                        AssetImage(functionHallController.functionHallBanner),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20, bottom: 20),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                            "Elevate every occasion with our \nmultipurpose function hall",
                            textAlign: TextAlign.center,
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
                  ],
                ),
              ),
              Container(
                width: imgwidth,
                height: bannerHeight,
                margin: const EdgeInsets.only(
                    top: 20, left: 20, right: 20, bottom: 20),
                child: CarouselSlider.builder(
                  itemCount: functionHallController.marriageImageList.length,
                  options: CarouselOptions(
                    height: 600,
                    autoPlay: true,
                    viewportFraction: 1,
                    autoPlayInterval: const Duration(seconds: 2),
                    scrollPhysics: const NeverScrollableScrollPhysics(),
                  ),
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      Container(
                    width: width,
                    height: 500,
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(functionHallController
                                .marriageImageList[itemIndex]),
                            fit: BoxFit.fill)),
                    child: Text("Marriage Hall",
                        style: TextStyle(
                            fontSize: titleFontSize, color: Colors.white)),
                  ),
                ),
              ),
              Container(
                width: imgwidth,
                alignment: Alignment.center,
                padding: EdgeInsets.all(paddingValue),
                margin: EdgeInsets.all(marginValue),
                child: Text(
                  "Experience the perfect celebration at our spacious marriage hall, designed to make your special day truly memorable. Our venue offers ample car parking facilities for your guests' convenience, ensuring a hassle-free arrival. With elegant décor, versatile spaces, and top-notch amenities, create cherished moments surrounded by beauty and comfort as you celebrate your love with family and friends.",
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kDarkGrey,
                      fontSize: width > 600 ? 24 : 12,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.1),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("BOOK NOW",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white)),
                ),
              ),
              Container(
                width: imgwidth,
                height: bannerHeight,
                margin: const EdgeInsets.only(
                    top: 20, left: 20, right: 20, bottom: 20),
                child: CarouselSlider.builder(
                  itemCount: functionHallController.marriageImageList.length,
                  options: CarouselOptions(
                    height: 600,
                    autoPlay: true,
                    viewportFraction: 1,
                    autoPlayInterval: const Duration(seconds: 2),
                    scrollPhysics: const NeverScrollableScrollPhysics(),
                  ),
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      Container(
                    width: width,
                    height: 600,
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(functionHallController
                                .stageImageList[itemIndex]),
                            fit: BoxFit.fill)),
                    child: Text("Corporate Hall",
                        style: TextStyle(
                            fontSize: titleFontSize, color: Colors.white)),
                  ),
                ),
              ),
              Container(
                width: imgwidth,
                alignment: Alignment.center,
                padding: EdgeInsets.all(paddingValue),
                margin: EdgeInsets.all(marginValue),
                child: Text(
                  "Discover the ideal setting for your corporate events at our versatile hall designed to meet your professional needs. Our space offers state-of-the-art facilities, customizable layouts, and seamless technology, perfect for meetings, conferences, and seminars. Elevate your events with our attentive service, adaptable spaces, and amenities tailored to ensure a successful and productive gathering for your organization.",
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kDarkGrey,
                      fontSize: width > 600 ? 24 : 12,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.1),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("BOOK NOW",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white)),
                ),
              ),
              Container(
                width: imgwidth,
                height: bannerHeight,
                margin: const EdgeInsets.only(
                    top: 20, left: 20, right: 20, bottom: 20),
                child: CarouselSlider.builder(
                  itemCount: functionHallController.marriageImageList.length,
                  options: CarouselOptions(
                    height: 600,
                    autoPlay: true,
                    viewportFraction: 1,
                    autoPlayInterval: const Duration(seconds: 2),
                    scrollPhysics: const NeverScrollableScrollPhysics(),
                  ),
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      Container(
                    width: width,
                    height: 600,
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(functionHallController
                                .multiImageList[itemIndex]),
                            fit: BoxFit.fill)),
                    child: Text("Business Centre",
                        style: TextStyle(
                            fontSize: titleFontSize, color: Colors.white)),
                  ),
                ),
              ),
              Container(
                width: imgwidth,
                alignment: Alignment.center,
                padding: EdgeInsets.all(paddingValue),
                margin: EdgeInsets.all(marginValue),
                child: Text(
                  "Welcome to our dynamic multi-purpose venue—a versatile space adaptable to various needs. From business centers with private cubicles to closed theaters and studios, our facility caters to diverse requirements. Ideal for filmmakers, creators, and event planners, our adaptable auditoriums offer state-of-the-art technology and flexible layouts to suit your vision. Whether it's a business endeavor, creative production, or immersive presentation, our space is your canvas for innovation and success.",
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kDarkGrey,
                      fontSize: width > 600 ? 24 : 12,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.1),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("BOOK NOW",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white)),
                ),
              ),
              Container(
                width: imgwidth,
                height: bannerHeight,
                margin: const EdgeInsets.only(
                    top: 20, left: 20, right: 20, bottom: 20),
                child: CarouselSlider.builder(
                  itemCount: functionHallController.marriageImageList.length,
                  options: CarouselOptions(
                    height: 600,
                    autoPlay: true,
                    viewportFraction: 1,
                    autoPlayInterval: const Duration(seconds: 2),
                    scrollPhysics: const NeverScrollableScrollPhysics(),
                  ),
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      Container(
                    width: width,
                    height: 600,
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(functionHallController
                                .openImageList[itemIndex]),
                            fit: BoxFit.fill)),
                    child: Text("Open Lawn",
                        style: TextStyle(
                            fontSize: titleFontSize, color: Colors.white)),
                  ),
                ),
              ),
              Container(
                width: imgwidth,
                alignment: Alignment.center,
                padding: EdgeInsets.all(paddingValue),
                margin: EdgeInsets.all(marginValue),
                child: Text(
                  "Step into our expansive open lawn and shed-style venue, the perfect canvas for your outdoor events. Whether it's a lively celebration, a picturesque wedding, or a relaxed gathering, our versatile space offers a charming blend of natural beauty and sheltered comfort. Embrace the open-air ambiance while enjoying the flexibility of covered areas, allowing you to create unforgettable moments amidst nature's beauty, rain or shine.",
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kDarkGrey,
                      fontSize: width > 600 ? 24 : 12,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.1),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("BOOK NOW",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, bottom: 10),
                child: Text("BENEFITS",
                    style: TextStyle(fontSize: 20, color: kmaroon)),
              ),
              GridView.builder(
                shrinkWrap: true, // Add this
                physics: NeverScrollableScrollPhysics(), // And this
                padding: const EdgeInsets.all(20.0),
                itemCount: cardsData.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      MediaQuery.of(context).size.width > 600 ? 4 : 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 2 / 2.30,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 350,
                            color: kmaroon,
                            child: Center(
                              child: Image.asset(cardsData[index]['image'],
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
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
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
