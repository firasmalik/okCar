import 'package:flutter/material.dart';
import 'package:flutter_app/models/cars.dart';
import 'package:flutter_app/utils/utils.dart';

class CarsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics:ScrollPhysics(),
      shrinkWrap:true,
      itemCount:allCars.cars.length ,
      itemBuilder: (ctx,i)=>Container(
      margin:EdgeInsets.only(top:i.isEven?0:10,bottom:i.isEven?10:0),
      decoration:BoxDecoration(
      color:Theme.of(context).primaryColor,
          boxShadow:[
            BoxShadow(
              color:Colors.grey,
              blurRadius: 10
            )

      ]
      ),
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