import 'package:flutter/material.dart';
import 'package:longevity_life/Public/constant.dart';

class Thali extends StatelessWidget {
  const Thali({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 400,
      margin: const EdgeInsets.only(top: 10, bottom: 20),
      decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(kThaliImage), fit: BoxFit.fill)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(kLeafImage, width: 75, color: Colors.white),
              ),
              SizedBox(
                width: width * 0.1,
                child: Text("Organically Sourced Ingredients",
                    textAlign: TextAlign.center, style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white)),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(kFarmImage, width: 75, color: Colors.white),
              ),
              SizedBox(
                width: width * 0.1,
                child: Text("Farm Fresh", textAlign: TextAlign.center, style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white)),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(kSupplementImage, width: 75, color: Colors.white),
              ),
              SizedBox(
                width: width * 0.1,
                child: Text("Carefully Curated Supplements",
                    textAlign: TextAlign.center, style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white)),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(kPlateImage, width: 75, color: Colors.white),
              ),
              SizedBox(
                width: width * 0.1,
                child: Text("Organic Vegetarian Cuisine",
                    textAlign: TextAlign.center, style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white)),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(kFoodImage, width: 75, color: Colors.white),
              ),
              SizedBox(
                width: width * 0.1,
                child: Text("Full Board (Breakfast, Lunch and Dinner)",
                    textAlign: TextAlign.center, style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white)),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(kDinnerImage, width: 75, color: Colors.white),
              ),
              SizedBox(
                width: width * 0.1,
                child: Text("Dining Space", textAlign: TextAlign.center, style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
