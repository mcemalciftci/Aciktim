import "package:flutter/material.dart";
import "loginpage.dart";
import "colors.dart";

class Pizzamario extends StatefulWidget {
  const Pizzamario({Key? key}) : super(key: key);

  @override
  State<Pizzamario> createState() => _PizzamarioState();
}

class _PizzamarioState extends State<Pizzamario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: const Text("Pizza Mario",
            style: TextStyle(
              fontSize: 18,
              fontFamily: "ProximaNova",
            )),
      ),
      body: Scrollbar(
        child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView(
              children: [
                photo(context, "teklipizza"),
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
                      "pizza1",
                      "Medium Boy Tek Menü",
                      49.90,
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
                      "ikilimenü",
                      "Efsane İkili Menü \n (Full Karışık 2 Adet Large Pizza)",
                      94.50,
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
                      "lukssmalmenu",
                      "Akdeniz Pizza (Small)  ",
                      35.00,
                    ),
                  ),
                ),
              ],
            )),
      ),
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

class dominos extends StatefulWidget {
  const dominos({Key? key}) : super(key: key);

  @override
  State<dominos> createState() => _dominosState();
}

class _dominosState extends State<dominos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: const Text("Domino's Pizza",
            style: TextStyle(
              fontSize: 18,
              fontFamily: "ProximaNova",
            )),
      ),
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              photo(context, "uclupizza"),
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
                    "lezzetedoyuran",
                    "Lezzete Doyuran Menü \n (2 Kişiliktir)",
                    99.90,
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
                    "ucortalı",
                    "Üçlü Efsane Meü \n (3 kişiliktir. )",
                    148.90,
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
                  child: page(context, "bolmalzemeli",
                      "Bol Malzemeli (Medium) Pizza", 49.90),
                ),
              ),
            ],
          )),
    );
  }
}

class ikonia extends StatefulWidget {
  const ikonia({Key? key}) : super(key: key);

  @override
  State<ikonia> createState() => _ikoniaState();
}

class _ikoniaState extends State<ikonia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: const Text("İkonia Pizza",
            style: TextStyle(
              fontSize: 18,
              fontFamily: "ProximaNova",
            )),
      ),
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              photo(context, "pizza"),
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
                    "ikonia",
                    "İkona Özel Menü (Large) Pizza",
                    59.90,
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
                    "ikonia2",
                    "İkonia Special Menü \n (2 kişilik Special (Large) Pizza)",
                    83.50,
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
                  child: page(context, "ikonia3", "Orta Boy Menü ", 79.95),
                ),
              ),
            ],
          )),
    );
  }
}
