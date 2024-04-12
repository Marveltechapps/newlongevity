import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:longevity_life/Controller/restaurant_controller.dart';
import 'package:longevity_life/Public/constant.dart';
import 'package:longevity_life/Utility/footer.dart';
import 'package:longevity_life/Utility/header.dart';
import 'package:longevity_life/Utility/thali.dart';

class RestaurantView extends StatelessWidget {
  const RestaurantView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: GetBuilder<RestaurantController>(
          builder: (restaurantController) => Column(
            children: [
              const Header(),
              Container(
                width: width,
                height: 300,
                alignment: Alignment.center,
                decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(kFruitImage), fit: BoxFit.fill)),
                child:
                    Text("Restaurant", style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white, fontSize: 48, fontStyle: FontStyle.italic)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(restaurantController.restaurantDining, width: width * 0.2),
                        ),
                        SizedBox(
                          width: width * 0.2,
                          child: Text(
                              "Reserved for our wellness stay guest, Comfort stay guest, and corporate guest, our exclusive restaurant offers a tailored culinary experience designed to enhance your well-being.",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.displaySmall),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(restaurantController.restaurantHotel, width: width * 0.2),
                        ),
                        SizedBox(
                          width: width * 0.2,
                          child: Text(
                              "Our outdoor restaurant is dedicated to sports and themed activities guests only. Enjoy a unique dining experience surrounded by the energy of sports and thematic adventures.",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.displaySmall),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: width * 0.2,
                      height: 75,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("2700 Sq ft", style: Theme.of(context).textTheme.titleSmall),
                          Text("Restaurants", style: Theme.of(context).textTheme.displaySmall),
                        ],
                      ),
                    ),
                    Container(
                      width: width * 0.2,
                      height: 75,
                      decoration: const BoxDecoration(border: Border(left: BorderSide(color: kDarkGrey), right: BorderSide(color: kDarkGrey))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Car Parking", style: Theme.of(context).textTheme.titleSmall),
                          Text("Facility", style: Theme.of(context).textTheme.displaySmall),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width * 0.2,
                      height: 75,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("100+ Client", style: Theme.of(context).textTheme.titleSmall),
                          Text("Happy Clients", style: Theme.of(context).textTheme.displaySmall),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Thali(),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: Text("Gallery", style: Theme.of(context).textTheme.titleSmall),
              ),
              SizedBox(
                width: width * 0.5,
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: restaurantController.restaurantImageList.length,
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10, childAspectRatio: 1),
                  itemBuilder: (BuildContext context, int index) => Image.asset(restaurantController.restaurantImageList[index]),
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
