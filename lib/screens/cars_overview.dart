import 'package:flutter/material.dart';

class CarsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title:Text("okCar",style: TextStyle(
        fontWeight:FontWeight.bold,
        fontSize: 26
        ),)
      ),
      body:Container(),
    );


  }
}
