import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'colors.dart';

class komagene extends StatefulWidget {
  const komagene({Key? key}) : super(key: key);

  @override
  State<komagene> createState() => _komageneState();
}

class _komageneState extends State<komagene> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: const Text("O Ses Çig Köfte",
            style: TextStyle(
              fontSize: 18,
              fontFamily: "ProximaNova",
            )),
      ),
      body: PhysicalModel(
        color: Colors.white,
        child: Expanded(
          child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView(
                children: [
                  photo(context, "cigkofte1"),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  title: const Text("Tamam"),
                                  content:
                                      const Text("Siparişiniz Alınmıştır."),
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
                        "efsanelezzettako",
                        "Efsane Lezzet Tako Çiğ Köfte",
                        13.90,
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
                                  content:
                                      const Text("Siparişiniz Alınmıştır."),
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
                        "komagene2",
                        "Double Dürüm Menü(175 gr.)",
                        33.50,
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
                                  content:
                                      const Text("Siparişiniz Alınmıştır."),
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
                        "komagene3",
                        "Efsane İkili Dürüm",
                        32.25,
                      ),
                    ),
                  ),
                ],
              )),
        ),
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

class oses extends StatefulWidget {
  const oses({Key? key}) : super(key: key);

  @override
  State<oses> createState() => _osesState();
}

class _osesState extends State<oses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: const Text("O Ses Çig Köfte",
            style: TextStyle(
              fontSize: 18,
              fontFamily: "ProximaNova",
            )),
      ),
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              photo(context, "cigkofte2"),
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
                    "500gr",
                    "500 gr Çiğ Köfte ",
                    50.50,
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
                    "oses3",
                    "İkili Dürüm Çig Kofte",
                    58.50,
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
                    "etsizacılı",
                    "Etsiz Acılı 600 gr Çig Köfte ",
                    70.50,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class cigkoftem extends StatefulWidget {
  const cigkoftem({Key? key}) : super(key: key);

  @override
  State<cigkoftem> createState() => _cigkoftemState();
}

class _cigkoftemState extends State<cigkoftem> {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
          body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              title: Text("Çiğköftem"),
              centerTitle: true,
              backgroundColor: Colors.redAccent,
            ),
          ];
        },
        body: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: StreamBuilder<Object>(
                stream: null,
                builder: (context, snapshot) {
                  return ListView(
                    children: [
                      photo(context, "cigkofte3"),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                        child: GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      title: const Text("Tamam"),
                                      content:
                                          const Text("Siparişiniz Alınmıştır."),
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
                            "cigkoftem",
                            " Bol Acılı 500 gr Çiğ Köfte",
                            54.00,
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
                                      content:
                                          const Text("Siparişiniz Alınmıştır."),
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
                            "cigkoftem2",
                            "4'lü Çiğköftem Menü",
                            69.50,
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
                                      content:
                                          const Text("Siparişiniz Alınmıştır."),
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
                            "cigkoftem3",
                            "Üçlü İçli Köfte ",
                            33.00,
                          ),
                        ),
                      ),
                    ],
                  );
                })),
      ));
    });
  }
}
