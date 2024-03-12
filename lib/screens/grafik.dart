import 'package:cook/havadurumu/havadurumu.dart';
import 'package:cook/loginpage.dart';
import 'package:cook/screens/loginscreen.dart';
import 'package:cook/screens/search.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class grafik extends StatefulWidget {
  const grafik({Key? key}) : super(key: key);

  @override
  State<grafik> createState() => _grafikState();
}

class _grafikState extends State<grafik> {
  @override
  Widget build(BuildContext context) {
    var data = [
      Sales("Mart", 50),
      Sales("Nisan", 70),
      Sales("Mayıs", 110),
      Sales("Haziran", 20),
    ];

    var series = [
      charts.Series(
          domainFn: (Sales sales, _) => sales.day,
          measureFn: (Sales sales, _) => sales.sold,
          id: "Sales",
          data: data,
          labelAccessorFn: (Sales sales, _) =>
              "${sales.day} : ${sales.sold.toString()}")
    ];

    var chart = charts.BarChart(
      series,
      vertical: false,
      barRendererDecorator: charts.BarLabelDecorator<String>(),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Text("Alışveriş Grafiği"),
                SizedBox(height: 400, child: chart),
              ],
            ),
          ),
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
                    navicon(Icons.person, false, const loginscreen(), context),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}

class Sales {
  final String day;
  final int sold;

  Sales(this.day, this.sold);
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
