import 'package:flutter/material.dart';
import 'package:flutter_app/models/cars.dart';
import 'package:flutter_app/utils/utils.dart';

class CarsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap:true,
      itemCount:allCars.cars.length ,
      itemBuilder: (ctx,i)=>Container(
      child:Column(
        children: [
          Image.asset(allCars.cars[i].path),
          Text(allCars.cars[i].title,
              style:BasicHeading),
          Text(allCars.cars[i].price.toString(),
          style:SubHeading),
          Text("per month")
        ],
      )
    ),

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
    );
  }
}