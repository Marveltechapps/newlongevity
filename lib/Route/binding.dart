import 'package:get/get.dart';
import 'package:longevity_life/Controller/beauty_skin_controller.dart';
import 'package:longevity_life/Controller/corporate_controller.dart';
import 'package:longevity_life/Controller/corporate_wellness_controller.dart';
import 'package:longevity_life/Controller/digital_detox_controller.dart';
import 'package:longevity_life/Controller/dining_controller.dart';
import 'package:longevity_life/Controller/facility_controller.dart';
import 'package:longevity_life/Controller/functionhall_controller.dart';
import 'package:longevity_life/Controller/home_controller.dart';
import 'package:longevity_life/Controller/leisure_controller.dart';
import 'package:longevity_life/Controller/longivity_controller.dart';
import 'package:longevity_life/Controller/mainlayout_controller.dart';
import 'package:longevity_life/Controller/mental_health_controller.dart';
import 'package:longevity_life/Controller/nomad_controller.dart';
import 'package:longevity_life/Controller/nutrition_controller.dart';
import 'package:longevity_life/Controller/physical_health_controller.dart';
import 'package:longevity_life/Controller/restaurant_controller.dart';
import 'package:longevity_life/Controller/special_screen_controller.dart';
import 'package:longevity_life/Controller/sport_controller.dart';
import 'package:longevity_life/Controller/theme_park_controller.dart';
import 'package:longevity_life/Controller/wellness_controller.dart';


class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainlayoutController(), permanent: true);
  }
}

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}

class SpecialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SpecialScreenController());
  }
}

class WellnessBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(WellnessController());
  }
}

class LongevityBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LongevityContorller());
  }
}

class MentalHealthBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MentalHealthController());
  }
}

class PhysicalHealthBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(PhysicalHealthController());
  }
}

class DigitalDetoxBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DigitalDetoxController());
  }
}

class BeautySkinBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BeautySkinController());
  }
}

class LeisureBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LeisureController());
  }
}

class CorporateBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CorporateController());
  }
}

class CorporateWellnessBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CorporateWellnessController());
  }
}

class FunctionHallBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(FunctionHallController());
  }
}

class NomadBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NomadController());
  }
}

class ThemeParkBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ThemeParkController());
  }
}

class SportBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SportController());
  }
}

class FacilityBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(FacilityController());
  }
}

class NutritionBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NutritionController());
  }
}

class DiningBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DiningController());
  }
}

class RestaurantBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RestaurantController());
  }
}
