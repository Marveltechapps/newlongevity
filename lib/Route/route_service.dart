import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:longevity_life/Route/binding.dart';
import 'package:longevity_life/Route/route_name.dart';
import 'package:longevity_life/View/beauty_skin_view.dart';
import 'package:longevity_life/View/corporate_view.dart';
import 'package:longevity_life/View/corporate_wellness_view.dart';
import 'package:longevity_life/View/digital_detox_view.dart';
import 'package:longevity_life/View/dining_view.dart';
import 'package:longevity_life/View/facility_view.dart';
import 'package:longevity_life/View/functionhall_view.dart';
import 'package:longevity_life/View/home_view.dart';
import 'package:longevity_life/View/leisure_view.dart';
import 'package:longevity_life/View/longevity_view.dart';
import 'package:longevity_life/View/physical_mental_health.dart';
import 'package:longevity_life/View/nomad_view.dart';
import 'package:longevity_life/View/nutrition_view.dart';
import 'package:longevity_life/View/physical_health_view.dart';
import 'package:longevity_life/View/restaurant_view.dart';
import 'package:longevity_life/View/special_screen.dart';
import 'package:longevity_life/View/sport_view.dart';
import 'package:longevity_life/View/theme_park_view.dart';
import 'package:longevity_life/View/wellness_view.dart';

class RouteService {
  Future<bool> onWillPop() async {
    return true;
  }

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case wellnessScreen:
        return GetPageRoute(
            routeName: wellnessScreen,
            page: () => const WellnessView(),
            binding: WellnessBinding(),
            settings: settings);
            case homeScreen:
              return GetPageRoute(
            routeName: homeScreen,
            page: () => const HomeView(),
            binding: HomeBinding(),
            settings: settings);
      case longevityScreen:
        return GetPageRoute(
            routeName: longevityScreen,
            page: () => const LongevityView(),
            binding: LongevityBinding(),
            settings: settings);
      case mentalHealtyScreen:
        return GetPageRoute(
            routeName: mentalHealtyScreen,
            page: () => const MentalHealthView(),
            binding: MentalHealthBinding(),
            settings: settings);
      case physicalHealtyScreen:
        return GetPageRoute(
            routeName: physicalHealtyScreen,
            page: () => const PhysicalHealthView(),
            binding: PhysicalHealthBinding(),
            settings: settings);
      case digitalDetoxScreen:
        return GetPageRoute(
            routeName: digitalDetoxScreen,
            page: () => const DigitalDetoxView(),
            binding: DigitalDetoxBinding(),
            settings: settings);
      case beautyAndSkinScreen:
        return GetPageRoute(
            routeName: beautyAndSkinScreen,
            page: () => const BeautySkinView(),
            binding: BeautySkinBinding(),
            settings: settings);
      case leisureStayScreen:
        return GetPageRoute(
            routeName: leisureStayScreen,
            page: () => const LeisureView(),
            binding: LeisureBinding(),
            settings: settings);
      case corporateStayScreen:
        return GetPageRoute(
            routeName: corporateStayScreen,
            page: () => const CorporateView(),
            binding: CorporateBinding(),
            settings: settings);
      case corporateWellnessScreen:
        return GetPageRoute(
            routeName: corporateWellnessScreen,
            page: () => CorporateWellnessView(),
            binding: CorporateWellnessBinding(),
            settings: settings);
      case functionHallScreen:
        return GetPageRoute(
            routeName: functionHallScreen,
            page: () => const FunctionHallView(),
            binding: FunctionHallBinding(),
            settings: settings);
      case nomadStayScreen:
        return GetPageRoute(
            routeName: nomadStayScreen,
            page: () => const NomadView(),
            binding: NomadBinding(),
            settings: settings);
      case themeParkScreen:
        return GetPageRoute(
            routeName: themeParkScreen,
            page: () => const ThemeParkView(),
            binding: ThemeParkBinding(),
            settings: settings);
      case sportScreen:
        return GetPageRoute(
            routeName: sportScreen,
            page: () => const SportView(),
            binding: SportBinding(),
            settings: settings);
      case facilityScreen:
        return GetPageRoute(
            routeName: facilityScreen,
            page: () => const FacilityView(),
            binding: FacilityBinding(),
            settings: settings);
      case nutritionScreen:
        return GetPageRoute(
            routeName: nutritionScreen,
            page: () => const NutritionView(),
            binding: NutritionBinding(),
            settings: settings);
      case diningScreen:
        return GetPageRoute(
            routeName: diningScreen,
            page: () => const DiningView(),
            binding: DiningBinding(),
            settings: settings);
      case restaurantScreen:
        return GetPageRoute(
            routeName: restaurantScreen,
            page: () => const RestaurantView(),
            binding: RestaurantBinding(),
            settings: settings);
      default:
        return GetPageRoute(
            routeName: specialScreen,
            page: () => const SpecialScreen(),
            binding: HomeBinding(),
            settings: settings);
    }
  }
}
