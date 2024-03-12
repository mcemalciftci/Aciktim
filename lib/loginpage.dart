import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cook/colors.dart';
import 'package:cook/hamburger.dart';
import 'package:cook/havadurumu/havadurumu.dart';
import 'package:cook/model/user_model.dart';
import 'package:cook/pizza.dart';
import 'package:cook/screens/grafik.dart';
import 'package:cook/screens/loginscreen.dart';
import 'package:cook/screens/search.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'cigkofte.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage>
    with SingleTickerProviderStateMixin {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();

    FirebaseFirestore.instance
        .collection("users")
        .doc(user?.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  late AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Merhaba  ${loggedInUser.firstname} "),
        backgroundColor: Colors.redAccent,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView(
                children: [
                  maps(context),
                  Center(
                    child: logo(),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Hamburger",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "ProximaNova",
                                      fontWeight: FontWeight.w500),
                                )
                              ]),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.32,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const mcdonals()));
                                  },
                                  child: Stack(
                                    children: [
                                      item(context, "etburger", "McDonal's"),
                                      score(9.1)
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                BurberKing()));
                                  },
                                  child: Stack(
                                    children: [
                                      item(context, "burgerx", "BurgerKing"),
                                      score(8.6)
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => burger42()));
                                  },
                                  child: Stack(
                                    children: [
                                      item(context, "burgerxl", "Burger 42"),
                                      score(7.4)
                                    ],
                                  ),
                                ),
                              ],
                            )),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Pizza",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "ProximaNova",
                                      fontWeight: FontWeight.w500),
                                )
                              ]),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.32,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Pizzamario()));
                                  },
                                  child: Stack(
                                    children: [
                                      item(
                                          context, "teklipizza", "Pizza Mario"),
                                      score(9.0)
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => dominos()));
                                  },
                                  child: Stack(
                                    children: [
                                      item(context, "uclupizza",
                                          "Domino's Pizza"),
                                      score(8.1)
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ikonia()));
                                  },
                                  child: Stack(
                                    children: [
                                      item(context, "pizza", "İkonia Pizza"),
                                      score(7.7)
                                    ],
                                  ),
                                ),
                              ],
                            )),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Çig Köfte",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "ProximaNova",
                                      fontWeight: FontWeight.w500),
                                )
                              ]),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.32,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => komagene()));
                                  },
                                  child: Stack(
                                    children: [
                                      item(context, "cigkofte1",
                                          "Komagene Çiğ Köfte"),
                                      score(8.9)
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => oses()));
                                  },
                                  child: Stack(
                                    children: [
                                      item(context, "cigkofte2",
                                          "Oses Çiğ Köfte"),
                                      score(8.4)
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => cigkoftem()));
                                  },
                                  child: Stack(
                                    children: [
                                      item(context, "cigkofte3", "Çiğköftem"),
                                      score(7.8)
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  ActionChip(
                      label: const Text("Çıkış Yap"),
                      onPressed: () {
                        logout(context);
                      }),
                  const SizedBox(height: 100),
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
                   // navicon(Icons.auto_graph, false, grafik(), context),
                    navicon(Icons.person, false, const loginscreen(), context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding score(double score) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.transparent),
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 0.5,
                offset: const Offset(0, 1),
              )
            ]),
        width: 80,
        height: 25,
        child: Row(children: [
          const Icon(Icons.star, color: customColor1),
          Text(
            "$score / 10",
            style: const TextStyle(
                color: customColor1, fontSize: 16, fontFamily: "ProximaNova"),
          ),
        ]),
      ),
    );
  }

  Container item(BuildContext context, String photo, String company) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
      child: Column(children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.transparent),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(0, 1.5),
                )
              ]),
          height: MediaQuery.of(context).size.height * 0.22,
          width: MediaQuery.of(context).size.height * 0.22,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              "assets/jpg/$photo.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "$company",
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.black, fontSize: 18, fontFamily: "ProximaNova"),
          ),
        ),
      ]),
    );
  }

  Container logo() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent, width: 10),
          borderRadius: BorderRadius.circular(30)),
      child: const Text(
        "Acıktım",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: customColor2, fontSize: 50, fontFamily: "ProximaNova"),
      ),
    );
  }

  Container maps(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      color: Colors.blueGrey,
      child: Image.asset(
        "assets/png/maps.png",
        fit: BoxFit.fitWidth,
      ),
    );
  }

  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const loginscreen()));
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
