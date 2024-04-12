import 'package:flutter/material.dart';
import 'package:longevity_life/Public/constant.dart';
import 'package:longevity_life/View/personal_well_being.dart';
import 'package:longevity_life/View/sport_view.dart';
import 'package:longevity_life/View/wellness_spa_view.dart';

import '../View/Ayurvedha.dart';
import '../View/familywell-being.dart';
import '../View/naturopathy_view.dart';
import '../View/siddha.dart';
import '../View/theme_park_view.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String? days;
  String? types;
  String? helpWithUs;
  String? diseases;
  String? healingTherapies;

  // Add your Menu class here if it's not defined elsewhere

  List<Menu> menus = [
    Menu(
        title: 'Days',
        options: ['01', '03', '06', '12', '15', '20', '24', '28', '30']),
    Menu(title: 'Types', options: [
      'Longevity',
      'Mental & Physical wellness',
      'Digital Detox',
      'Beauty & Skin Care'
    ]),
    Menu(
        title: 'Help With Us',
        options: ['Doctor Consultation', 'Select by Myself']),
    Menu(title: 'Diseases', options: [
      'Stress',
      'Sleepless',
      'Loneliness',
      'Anxiety Disorder',
      'Asthma',
      'Migrane',
      'Depression',
      'Back Neck Pain',
      'Obesity',
      'Hypertension',
      'Hormonal Disorder',
      'Anaemia',
      'Lower Back Pain',
      'Low Blood Pressure',
      'Skin Disorder',
      'Mood Disorder',
      'Detoxification',
      'Shoulder Pain',
      'Kneel Pain',
      'Relationship Issues',
      'Emotional Disorder'
    ]),
    Menu(title: 'Healing Therapies', options: [
      'SPA',
      'Ayurvedic',
      'Naturopathy',
      'Siddha',
      'Western Nephropathy Massage',
      'Accupanture',
      'Holistic Wellness',
      'Diet Therophy',
      'Body Sculpting',
      'Counseling',
      'Crystal Therophy'
    ]),
  ];

  void _updateSelectedOption(String title, String? newValue) {
    setState(() {
      switch (title) {
        case 'Days':
          days = newValue;
          break;
        case 'Types':
          types = newValue;
          break;
        case 'Help With Us':
          helpWithUs = newValue;
          break;
        case 'Diseases':
          diseases = newValue;
          break;
        case 'Healing Therapies':
          healingTherapies = newValue;
          break;
      }
    });
  }

  String? _getSelectedOption(String title) {
    switch (title) {
      case 'Days':
        return days;
      case 'Types':
        return types;
      case 'Help With Us':
        return helpWithUs;
      case 'Diseases':
        return diseases;
      case 'Healing Therapies':
        return healingTherapies;
      default:
        return null;
    }
  }

  void navigateBasedOnSelection(BuildContext context) {
    Widget nextPage;

    switch (healingTherapies) {
      case 'SPA':
        nextPage = Spa(); // Replace with your actual page
        break;
      case 'Ayurvedic':
        nextPage = Ayurvedha(); // Replace with your actual page
        break;
      case 'Naturopathy':
        nextPage = NaturoPAthy(); // Replace with your actual page
        break;
      case 'Siddha':
        nextPage = Siddha(); // Replace with your actual page
        break;
      default:
        // Default page or error handling
        nextPage = Scaffold(
            body: Center(
                child: Text(
                    'No selection made or page for the selection does not exist.')));
    }

    Navigator.push(context, MaterialPageRoute(builder: (context) => nextPage));
  }

  int selectedIndex = 0;

  final List<String> relaxationimg = [
    "assets/wellness_activities1.png",
    "assets/wellness_activities2.png",
    "assets/wellness_activities3.png",
    "assets/wellness_activities4.png",
    "assets/wellness_activities5.png",
  ];

  final List<String> relaxationtitle = [
    "Sunlight - Vitamin - D",
    "Pure Oxygen Intake - O2",
    "Beach Yoga / Walk",
    "Social Interation",
    "Wellness Theatre",
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool isLargeScreen = width > 600;

    return Container(
      height: 80,
      width: isLargeScreen ? width * 0.7 : width - 30,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ...menus.map((menu) {
              return Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 2), // Margin between dropdowns
                child: DropdownButton<String>(
                  isExpanded: false,
                  // Not expanding in mobile view to save space
                  underline: Container(),
                  hint: Text(
                    menu.title,
                    style: TextStyle(
                      fontSize:
                          width > 600 ? 20 : 10, // Smaller text for mobile view
                    ),
                  ),
                  value: _getSelectedOption(menu.title),
                  onChanged: (String? newValue) {
                    setState(() => _updateSelectedOption(menu.title, newValue));
                  },
                  items: menu.options
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: const TextStyle(
                          fontSize: 14, // Smaller text for mobile view
                        ),
                      ),
                    );
                  }).toList(),
                ),
              );
            }),
            Container(
              margin: const EdgeInsets.only(
                  left: 5), // Adds spacing before the search icon
              decoration: BoxDecoration(
                color: const Color(0xFF233D63),
                borderRadius: BorderRadius.circular(30),
              ),
              child: IconButton(
                iconSize: 24,
                icon: const Icon(Icons.search, color: Colors.white),
                onPressed: () => navigateBasedOnSelection(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Menu {
  final String title;
  final List<String> options;

  Menu({required this.title, required this.options});
}
