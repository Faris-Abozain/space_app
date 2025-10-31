import 'package:flutter/material.dart';
import 'PlanetModel.dart';

class DescriptionScreen extends StatelessWidget {
  static const String routeName = "description_screen";

  const DescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final planet = ModalRoute.of(context)!.settings.arguments as PlanetModel;

    return Scaffold(
      backgroundColor: Colors.black,

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("Assets/moon.png",height: 200,width: 400,),
              Text(planet.name,style: TextStyle(fontSize: 40,color: Colors.white),),
              Image.asset(planet.image, height: 250),
              SizedBox(height: 20),
              Text(
                planet.description,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}