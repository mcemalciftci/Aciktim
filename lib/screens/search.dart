import 'package:cook/havadurumu/havadurumu.dart';
import 'package:cook/loginpage.dart';
import 'package:cook/screens/grafik.dart';
import 'package:cook/screens/kayitlarsayfasi.dart';
import 'package:cook/screens/loginscreen.dart';
import 'package:cook/veritabani/kayitlar.dart';
import 'package:cook/veritabani/kayitlarservice.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  kayitlarservice kayitlarservisi = kayitlarservice.instance;
  final textcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final my_textfield = TextFormField(
        controller: textcontroller,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(8))));
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              const SizedBox(height: 8),
              my_textfield,
              const SizedBox(
                height: 10,
              ),
              ElevatedButton.icon(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.redAccent)),
                  onPressed: () {
                    kayitlarservisi.addkayit(kayitlar(textcontroller.text));
                  },
                  icon: const Icon(Icons.search),
                  label: const Text("Ara")),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.redAccent)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return kayitlarsayfasi();
                    }));
                  },
                  child: const Text("arama kayıtları")),
              const SizedBox(height: 15),
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
                        navicon(
                            Icons.sunny, false, const havadurumu(), context),
                        navicon(Icons.auto_graph, false, grafik(), context),
                        navicon(
                            Icons.person, false, const loginscreen(), context),
                      ]),
                ),
              )
            ])));
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
