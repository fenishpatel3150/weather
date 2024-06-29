import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:weather/screen/controller/WeatherController.dart';
import 'package:weather/screen/view/home/HomeScreen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherProvider weatherController = Provider.of(context);
    WeatherProvider weatherControllerFalse = Provider.of(context,listen: false);
    return Scaffold(
      backgroundColor: Color(0xff686b7f),
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 45,left: 15),
            child: Container(
              height: 45,
              width: 330,
              decoration: BoxDecoration(color: Color(0xff54556c),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff54556c),
                        blurRadius: 10
                    )
                  ]
              ),
          child:Container(
            child: TextField(
              controller: weatherController.textEditingController,
              onChanged: (value) {
                weatherControllerFalse.searchApi(value);
              },style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                focusColor: Colors.white,
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.white),
                suffixIcon: IconButton(
                    onPressed: () {
                      weatherController.fetchData();
                      Navigator.of(context)
                          .push(MaterialPageRoute(
                        builder: (context) => HomeScreen(
                            weatherProvider: weatherController),
                      ));
                    },
                    icon:  Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    )),
                prefixIcon:  Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
          ),

            ),
          )
        ],
      ),

    );
  }
}