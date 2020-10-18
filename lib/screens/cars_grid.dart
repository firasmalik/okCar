
import 'package:flutter/material.dart';
import 'package:flutter_app/models/cars.dart';
import './models/cars.dart';
class CarsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount:allCars.cars.length ,
      itemBuilder: ,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
        (
        crossAxisCount: 2),

      )    );
  }
}
