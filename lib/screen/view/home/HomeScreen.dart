import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:weather/screen/controller/WeatherController.dart';
import 'package:weather/utils/utils.dart';

import '../search/SecondScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required weatherProvider});


  @override
  Widget build(BuildContext context) {


    WeatherProvider weatherController = Provider.of(context);

    return Scaffold(
      backgroundColor: const Color(0xff696c80),
      appBar: AppBar(
        backgroundColor: const Color(0xff696c80),
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: [
          IconButton(onPressed: ()
              {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>SearchScreen() ,));
              }, icon: Icon(Icons.search_rounded,color: Colors.white,))
        ],
      ),
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25,top: 25,),
                  child: Text(
                   '${ weatherController.weather!.currentModal.tempC.toString()}°C',
                    style: TextStyle(
                        color: Colors.white, fontSize: 40),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage('https:${weatherController.weather!.weatherForecast.forecastday[0].hour[0].condition.icon}')),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left : 25),
              child: Text(weatherController.weather!.currentModal.conditionModel.text.toString(),
                style: TextStyle(color: Colors.white, fontSize: 15,fontWeight: FontWeight.w300),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25, top: 25),
                  child: Text(
                    weatherController.weather!.locationModal.name.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Icon(
                    Icons.location_on_sharp,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
             Row(
               children: [
                 Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text('${weatherController.weather!.locationModal.region},',
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: Colors.white,
                    ),
                  ),
                             ),
                 Padding(
                  padding: EdgeInsets.only(),
                  child: Text('${weatherController.weather!.locationModal.country},',
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: Colors.white,
                    ),
                  ),
                             ),
               ],
             ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xff55566b),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: Column(
                  children: [
                   Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(top: 20,left: 16),
                         child: Text('${weatherController.weather!.currentModal.conditionModel.text}',style: TextStyle(color: Colors.white),),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 20,left: 10),
                         child: Text('${weatherController.weather!.currentModal.tempC.toString()}°C',style: TextStyle(color: Colors.white),),
                       ),
                     ],
                   ),
                    Divider(
                      color: Colors.grey,
                      height: 10,
                      endIndent:15,
                      indent: 10,
                      thickness: 0.8,
                    ),
                    SizedBox(height: 15,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(weatherController
                              .weather!.weatherForecast.forecastday[0].hour.length,
                              (index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 14.0),
                              child:  WeatherImage(
                                  weatherController.weather!.weatherForecast.forecastday[0].hour[index].tempC.toString(),
                                  Image.network(
                                    'https:${weatherController.weather!.weatherForecast.forecastday[0].hour[index].condition.icon}',
                                    fit: BoxFit.cover,
                                  ),
                                  '${index + 1}'),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
            scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(TextList.length, (index) => Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 80,
                        width: 325,
                        decoration: const BoxDecoration(
                          color: Color(0xff55566b),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child:Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(TextList[index]['text'],style: TextStyle(color: Colors.white),),
                            ),
                            Text(TextList[index]['subtitle'],style: TextStyle(fontWeight: FontWeight.w200,color: Colors.white,fontSize: 12),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 350,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xff55566b),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 15),
                            child: Text('TempC',style: TextStyle(color: Colors.white,fontSize:15,fontWeight: FontWeight.w500 ),),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 15,right: 50 ),
                            child: Text('TempF',style: TextStyle(color: Colors.white,fontSize:15,fontWeight: FontWeight.w500 ),),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(right: 20,top: 15),
                            child: Text('Days',style: TextStyle(color: Colors.white,fontSize:15,fontWeight: FontWeight.w500),),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                        height: 20,
                        endIndent:15,
                        indent: 10,
                        thickness: 0.8,
                      ),
                    Column(
                      children: List.generate(weatherController
                              .weather!.weatherForecast.forecastday[0].hour.length,
                                (index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                                child:  weatherDays(

                                  '${weatherController.weather!.weatherForecast.forecastday[0].hour[index].tempC.toString()}',
                                    Image.network(
                                      'https:${weatherController.weather!.weatherForecast.forecastday[0].hour[index].condition.icon}',
                                      fit: BoxFit.cover,
                                    ),
                                    '${weatherController.weather!.weatherForecast.forecastday[0].hour[index].tempF.toString()}',

                                  weatherController.dateTime.day+index+1<=30?'Jun,${weatherController.dateTime.day+index+1}':'Jul,${(weatherController.dateTime.day+index+1)%30}',

                                ),
                              );
                            },
                          ),
                    )
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                      color: Color(0xff55566b),

                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: [
                        Container(
                            height: 100,
                            width: 100,
                            child: Image.asset('assets/image1.png')),
                        Text('Uv index',style: TextStyle(color: Colors.white),),
                        Text('${weatherController.weather!.currentModal.uv}',style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                      color: Color(0xff55566b),

                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: [
                        Container(
                            height: 100,
                            width: 100,
                            child: Image.asset('assets/image2.png')),
                        Text('Humidlty',style: TextStyle(color: Colors.white),),
                        Text('${weatherController.weather!.currentModal.humidity}%',style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 15),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                      color: Color(0xff55566b),

                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: [
                        Container(
                            height: 100,
                            width: 100,
                            child: Image.asset('assets/image3.png')),
                        Text('Wind',style: TextStyle(color: Colors.white),),
                        Text('${weatherController.weather!.currentModal.windKph}Km/h',style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 15),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                      color: Color(0xff55566b),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: [
                        Container(
                            height: 100,
                            width: 80,
                            child: Image.asset('assets/image4.png')),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text('Sunrise',style: TextStyle(color: Colors.white),),
                             SizedBox(width: 10,),
                             Text('Sunset',style: TextStyle(color: Colors.white),),
                           ],
                         ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('5:59am',style: TextStyle(color: Colors.grey),),
                            SizedBox(width: 10,),
                            Text('7:24pm',style: TextStyle(color: Colors.grey),),

                          ],
                        ),
                       ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.all(25),
              child: Container(
                height: 270,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xff55566b),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text('Reader and maps',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,top: 15),
                      child: Container(
                        height: 180,
                        width: 280,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: AssetImage('assets/map.jpeg'),fit:BoxFit.cover),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18,top: 10),
                      child: Text('${weatherController.weather!.currentModal.conditionModel.text.toString()}',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),),
                    ),
                  ],
                ),
              ),
            ),
           Row(
             children: [
               Padding(
                 padding: const EdgeInsets.only(left: 25),
                 child: Icon(Icons.ac_unit_outlined,color: Colors.white,),
               ),
               Text('The Weather Channel',style: TextStyle(color: Colors.white,fontSize: 12),),
               Spacer(),
               Padding(
                 padding: const EdgeInsets.only(left: 15,right: 30),
                 child: Text('Updated ${weatherController.weather!.currentModal.lastUpdated}',style: TextStyle(color: Colors.white,fontSize: 12),),
               ),
             ],
           ),
            Container(
              height: 20,
            ),

          ],
        ),
      ),
    );
  }

  Padding weatherDays(String temp ,Image image, String name,String tempf) {
    return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(name,style: TextStyle(color: Colors.white),),
                        SizedBox(width: 40, child: image),
                        Text(temp,style: TextStyle(color: Colors.white),),
                        Text(tempf,style: TextStyle(color: Colors.white),),

                      ],
                    ),
                  );
  }
  Column  WeatherImage( String temp, Image image, String name) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          temp,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),

        SizedBox(width: 40, child: image),

        Text(
          "$name:00",
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
