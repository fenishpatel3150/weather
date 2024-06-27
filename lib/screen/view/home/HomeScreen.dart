import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/screen/controller/WeatherController.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    WeatherController weatherControllerTrue =Provider.of(context);
    WeatherController weatherControllerFalse =Provider.of(context,listen:false);


    return Scaffold(
      backgroundColor: Color(0xff696c80),
      appBar: AppBar(
        backgroundColor: Color(0xff696c80),
        leading: Icon(Icons.menu,color: Colors.white,),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 25,top: 25),
                child: Text('20',style: TextStyle(color: Colors.white,fontSize: 50),)
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text('Rain',style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
            Row(
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 25,top: 25),
                  child: Text('',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25,color: Colors.white),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Icon(Icons.location_on_sharp,color: Colors.white,),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text('33 / 28 Feels like 34',style: TextStyle(fontWeight: FontWeight.w200,color: Colors.white),),
            ),


            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xff55566b),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xff55566b),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xff55566b),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xff55566b),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
              ),
            ),


          ],
        ),
      ),


    );
  }
}
