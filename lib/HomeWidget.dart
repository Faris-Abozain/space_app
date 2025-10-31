import 'package:flutter/material.dart';
import 'DescriptionScreen.dart';
import 'PlanetModel.dart';

class HomeWidget extends StatelessWidget {
  final PlanetModel planet;
  final VoidCallback onNext;
  final VoidCallback onPrevious;

  const HomeWidget({
    super.key,
    required this.planet,
    required this.onNext,
    required this.onPrevious,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("Assets/moon.png")),
          ),
          child: Center(
            child: Text(
              "Explore\nWhich planet would you like to explore?",
              style: TextStyle(fontSize: 26, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Image.asset(planet.image, height: 400),
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: onPrevious,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffEE403D),
                shape: CircleBorder(),
              ),
              child: Icon(Icons.arrow_back, color: Colors.white),
            ),
            Text(
              planet.name,
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            ElevatedButton(
              onPressed: onNext,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffEE403D),
                shape: CircleBorder(),
              ),
              child: Icon(Icons.arrow_forward, color: Colors.white),
            ),
          ],
        ),
        SizedBox(height: 70),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              DescriptionScreen.routeName,
              arguments: planet,
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffEE403D),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Explore ${planet.name}",
                style: TextStyle(fontSize: 20,color: Colors.white),
              ),
              SizedBox(width: 190),
              Icon(Icons.arrow_forward,color: Colors.white,),
            ],
          ),
        ),
      ],
    );
  }
}