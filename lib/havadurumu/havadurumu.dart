import 'package:cook/havadurumu/additional_location.dart';
import 'package:cook/havadurumu/currentWeather.dart';
import 'package:cook/havadurumu/havadurumu_model/weather_models.dart';
import 'package:cook/havadurumu/servis/havadurumu_api.dart';
import 'package:cook/loginpage.dart';
import 'package:cook/screens/grafik.dart';
import 'package:cook/screens/loginscreen.dart';
import 'package:cook/screens/search.dart';
import 'package:flutter/material.dart';
import 'dart:ffi';

class havadurumu extends StatefulWidget {
  const havadurumu({Key? key}) : super(key: key);

  @override
  State<havadurumu> createState() => _havadurumuState();
}

class _havadurumuState extends State<havadurumu> {
  WeatherApiClient client = WeatherApiClient();
  Weather? data;
  Future<void> getData() async {
    data = await client.getCurrentweather("Konya");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFf9f9f9),
        appBar: AppBar(
          backgroundColor: Colors.red,
          title:
              const Text("Hava Durumu", style: TextStyle(color: Colors.white)),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            FutureBuilder(
                future: getData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        currentWeather(Icons.wb_sunny_rounded, "${data!.temp}",
                            "${data!.cityname}"),
                        SizedBox(
                          height: 60.0,
                        ),
                        Text("Additional Location",
                            style: TextStyle(
                              fontSize: 24.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                        Divider(),
                        SizedBox(
                          height: 20,
                        ),
                        additionalInofrmation(
                            "${data!.wind}",
                            "${data!.humidity}",
                            "${data!.pressure}",
                            "${data!.feels_like}"),
                      ],
                    );
                  } else if (snapshot.connectionState ==
                      ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return Container();
                }),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.red,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      navicon(Icons.home, false, const loginpage(), context),
                      navicon(Icons.search, false, search(), context),
                      navicon(Icons.sunny, false, const havadurumu(), context),
                      navicon(Icons.auto_graph, false, grafik(), context),
                      navicon(
                          Icons.person, false, const loginscreen(), context),
                    ]),
              ),
            )
          ],
        ));
  }
}

navicon(IconData icondata, bool active, Widget widget, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return widget;
      }));
    },
    child: Icon(icondata, size: 21, color: Colors.black),
  );
}
