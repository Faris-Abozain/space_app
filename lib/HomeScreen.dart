import 'package:flutter/material.dart';
import 'HomeWidget.dart';
import 'PlanetModel.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home_screen";

  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void _nextPlanet() {
    if (_currentIndex < PlanetModel.planets.length - 1) {
      setState(() {
        _currentIndex++;
      });
    }
  }

  void _previousPlanet() {
    if (_currentIndex > 0) {
      setState(() {
        _currentIndex--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: HomeWidget(
        planet: PlanetModel.planets[_currentIndex],
        onNext: _nextPlanet,
        onPrevious: _previousPlanet,
      ),
    );
  }
}