// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_tasarimi_yapmak/DetayClass.dart';

void main() => runApp(const ModaApp());

class ModaApp extends StatelessWidget {
  const ModaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int _selectedIndex = 0;

  void _onItemTabbed(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "", backgroundColor: Colors.amber),
          BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: "",
              backgroundColor: Colors.brown),
          BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: "",
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.zoom_in),
              label: "",
              backgroundColor: Colors.indigo)
        ],
        type: BottomNavigationBarType
            .fixed, //her item seçildiğinde arka plan renginin degismesi icin .shifting secilmeli..
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.brown.withOpacity(0.3),
        selectedItemColor: Colors.brown,
        selectedFontSize: 15,
        selectedIconTheme: IconThemeData(size: 30),
        unselectedIconTheme: IconThemeData(size: 24),
        currentIndex: _selectedIndex,

        onTap:
            _onItemTabbed, // burada secilen iconun indexini ontabbed fonksiyonuna veriyor
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Moda Uygulamasi",
          style: TextStyle(
            fontFamily: 'Macondo',
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt),
            color: Colors.grey,
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            height: 130,
            // color: Colors.blue.shade300,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                listeElemani("assets/model1.jpeg", "assets/chanellogo.jpg"),
                listeElemani("assets/model2.jpeg", "assets/louisvuitton.jpg"),
                listeElemani("assets/model3.jpeg", "assets/chloelogo.png"),
                listeElemani("assets/model1.jpeg", "assets/chanellogo.jpg"),
                listeElemani("assets/model2.jpeg", "assets/louisvuitton.jpg"),
                listeElemani("assets/model3.jpeg", "assets/chloelogo.png"),
                listeElemani("assets/model1.jpeg", "assets/chanellogo.jpg"),
                listeElemani("assets/model2.jpeg", "assets/louisvuitton.jpg"),
                listeElemani("assets/model3.jpeg", "assets/chloelogo.png")
              ],
            ),
          ),
          const SingleShareWidget(),
        ],
      ),
    );
  }

  Widget listeElemani(String imagePath, String logoPath) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 5),
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover),
                ),
              ),
              Positioned(
                top: 50,
                left: 50,
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage(logoPath), fit: BoxFit.cover),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(18, 5, 18, 5),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 142, 81, 20),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Text(
              "Follow",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontStyle: FontStyle.normal,
                //fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SingleShareWidget extends StatelessWidget {
  const SingleShareWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Material(
        borderRadius: BorderRadius.circular(15),
        elevation: 4,
        child: Container(
          padding: const EdgeInsets.all(16),
          height: 480,
          width: double.infinity,
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          image: const DecorationImage(
                              image: AssetImage("assets/model1.jpeg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                // width: MediaQuery.of(context).size.width-100,
                                child: const Text(
                              "Daisy",
                              style: TextStyle(fontSize: 18),
                            )),
                            Container(
                                child: const Text(
                              "34 mins age",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 89, 89, 89)),
                            ))
                          ],
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                        color: Color.fromARGB(255, 89, 89, 89),
                      ))
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: const [
                  Expanded(
                    child: Text(
                      "     This official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparement and  is  recommend to friends",
                      style: TextStyle(fontSize: 13, fontFamily: "montserrat"),
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetayClass(
                          assetName: "assets/modelgrid1.jpeg",
                        ),
                      ));
                    },
                    child: Hero(
                      tag: "assets/modelgrid1.jpeg",
                      child: Container(
                        height: 210,
                        width: (MediaQuery.of(context).size.width - 100) / 2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: const DecorationImage(
                                image: AssetImage("assets/modelgrid1.jpeg"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: [
                      InkWell(
                        onTap: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetayClass(
                                      assetName: "assets/modelgrid2.jpeg")));
                        }),
                        child: Hero(
                          tag: "assets/modelgrid2.jpeg",
                          child: Container(
                            height: 100,
                            width: (MediaQuery.of(context).size.width - 50) / 2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    image: AssetImage("assets/modelgrid2.jpeg"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      InkWell(
                        onTap: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetayClass(
                                      assetName: "assets/modelgrid3.jpeg")));
                        }),
                        child: Hero(
                          tag: "assets/modelgrid3.jpeg",
                          child: Container(
                            height: 100,
                            width: (MediaQuery.of(context).size.width - 50) / 2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    image: AssetImage("assets/modelgrid3.jpeg"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.brown.withOpacity(0.2)),
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      "# Louis vuitton",
                      style: TextStyle(
                          fontFamily: "montserrat",
                          fontSize: 10,
                          color: Colors.brown),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.brown.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(5)),
                    child: const Text(
                      "# Chloe",
                      style: TextStyle(
                          fontFamily: "montserrat",
                          fontSize: 10,
                          color: Colors.brown),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.share,
                          color: Colors.grey,
                        ),
                        label: const Text(
                          "11.5K",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: "montserrat",
                              fontSize: 14),
                        ),
                      ),
                      TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.comment,
                            color: Colors.grey,
                          ),
                          label: const Text(
                            "325",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: "montserrat",
                                fontSize: 14),
                          )),
                    ],
                  ),
                  TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      label: const Text(
                        "1.7K",
                        style: TextStyle(
                            color: Colors.grey,
                            fontFamily: "montserrat",
                            fontSize: 14),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
