import 'package:flutter/material.dart';
import "loginpage.dart";
import "colors.dart";

class mcdonals extends StatefulWidget {
  const mcdonals({Key? key}) : super(key: key);

  @override
  State<mcdonals> createState() => _mcdonalsState();
}

class _mcdonalsState extends State<mcdonals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: const Text("McDonal's",
            style: TextStyle(
              fontSize: 18,
              fontFamily: "ProximaNova",
            )),
      ),
      body: Builder(builder: (context) {
        return SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView(
              children: [
                photo(context, "etburger"),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: const Text("Tamam"),
                                content: const Text("Siparişiniz Alınmıştır."),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("Kapat"))
                                ],
                              ));
                    },
                    child: page(
                      context,
                      "bigmacmenü",
                      "Big Maç Menü \n (2 Kişiliktir)",
                      110.90,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: const Text("Tamam"),
                                content: const Text("Siparişiniz Alınmıştır."),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("Kapat"))
                                ],
                              ));
                    },
                    child: page(
                      context,
                      "millimenü",
                      "A Milli Takım Özel Menü \n (2 kişilik Milli Takım Özel Menü )",
                      96.50,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: const Text("Tamam"),
                                content: const Text("Siparişiniz Alınmıştır."),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("Kapat"))
                                ],
                              ));
                    },
                    child: page(
                      context,
                      "efsaneikili",
                      "Efsane İkili Menü ",
                      85,
                    ),
                  ),
                ),
              ],
            ));
      }),
    );
  }

  Container photo(BuildContext context, String photo) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      color: Colors.blueGrey,
      child: Image.asset(
        "assets/jpg/$photo.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
}

Container page(
    BuildContext context, String photo, String company, double fiyat) {
  return Container(
    child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 241, 243, 248)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$company",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 16,
                          fontFamily: "ProximaNova",
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "\n $fiyat TL",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 16,
                          fontFamily: "ProximaNova",
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
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
                  height: MediaQuery.of(context).size.height * 0.16,
                  width: MediaQuery.of(context).size.height * 0.16,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      "assets/jpg/$photo.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )),
  );
}

class BurberKing extends StatefulWidget {
  const BurberKing({Key? key}) : super(key: key);

  @override
  State<BurberKing> createState() => _BurberKingState();
}

class _BurberKingState extends State<BurberKing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: const Text("Burger King",
            style: TextStyle(
              fontSize: 18,
              fontFamily: "ProximaNova",
            )),
      ),
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              photo(context, "burgerx"),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: const Text("Tamam"),
                              content: const Text("Siparişiniz Alınmıştır."),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("Kapat"))
                              ],
                            ));
                  },
                  child: page(
                    context,
                    "big-king-menu",
                    "Big King® Menü",
                    57.99,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: const Text("Tamam"),
                              content: const Text("Siparişiniz Alınmıştır."),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("Kapat"))
                              ],
                            ));
                  },
                  child: page(
                    context,
                    "double-whopper-menu",
                    "Double Whopper® Menü",
                    87.99,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: const Text("Tamam"),
                              content: const Text("Siparişiniz Alınmıştır."),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("Kapat"))
                              ],
                            ));
                  },
                  child: page(
                    context,
                    "kofteburger-menu",
                    "Köfteburger® Menü ",
                    44.99,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

Container photo(BuildContext context, String photo) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.25,
    color: Colors.blueGrey,
    child: Image.asset(
      "assets/jpg/$photo.jpg",
      fit: BoxFit.cover,
    ),
  );
}

class burger42 extends StatefulWidget {
  const burger42({Key? key}) : super(key: key);

  @override
  State<burger42> createState() => _burger42State();
}

class _burger42State extends State<burger42> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: const Text("Burger 42",
            style: TextStyle(
              fontSize: 18,
              fontFamily: "ProximaNova",
            )),
      ),
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              photo(context, "burgerxl"),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: const Text("Tamam"),
                              content: const Text("Siparişiniz Alınmıştır."),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("Kapat"))
                              ],
                            ));
                  },
                  child: page(
                    context,
                    "gameof",
                    "Game of Konyalı Burger Menü ",
                    60.00,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: const Text("Tamam"),
                              content: const Text("Siparişiniz Alınmıştır."),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("Kapat"))
                              ],
                            ));
                  },
                  child: page(
                    context,
                    "burger42",
                    "Mexican Burger Menü",
                    72.00,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: const Text("Tamam"),
                              content: const Text("Siparişiniz Alınmıştır."),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("Kapat"))
                              ],
                            ));
                  },
                  child: page(
                    context,
                    "burger2",
                    "S-Hack Burger Menü ",
                    64.99,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
