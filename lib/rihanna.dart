import "package:flutter/material.dart";
import 'package:spotify_clone/main.dart';
import 'package:spotify_clone/muzikOynaticisiBadGuy.dart';
import 'package:spotify_clone/muzikOynaticisiBichota.dart';
import 'package:spotify_clone/muzikOynaticisiDameloTo.dart';
import 'package:spotify_clone/muzikOynaticisiEverything.dart';
import 'package:spotify_clone/muzikOynaticisiFotia.dart';
import 'package:spotify_clone/muzikOynaticisiLovely.dart';
import 'package:spotify_clone/muzikOynaticisiRudeBoy.dart';
import 'package:spotify_clone/muzikOynaticisiRunnin.dart';
import 'package:spotify_clone/muzikOynaticisiStephanie.dart';
import 'package:spotify_clone/muzikOynaticisiStreets.dart';
import 'package:spotify_clone/muzikOynaticisiSwag.dart';
import 'package:spotify_clone/muzikOynaticisiThere.dart';
import 'package:spotify_clone/muzikOynaticisiUmbrella.dart';
import 'package:spotify_clone/muzikOynaticisiWeAreGood.dart';
import 'package:spotify_clone/muzikOynaticisiWhoopty.dart';
import 'package:spotify_clone/smthStupid.dart';
import 'muzikOynaticisiDiamonds.dart';
import 'muzikOynaticisiMarshmallow.dart';
import 'muzikOynaticisiWhere.dart';

class Rihanna extends StatefulWidget {
  @override
  _RihannaState createState() => _RihannaState();
}

class _RihannaState extends State<Rihanna> {
  int seciliSayfa = 0;
  void sayfaDegistir(int index) {
    setState(() {
      seciliSayfa = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Colors.black, primaryColor: Colors.white),
        child: BottomNavigationBar(
          unselectedItemColor: Colors.white,
          currentIndex: seciliSayfa,
          onTap: sayfaDegistir,
          type: BottomNavigationBarType.fixed,
          //fixedColor: Colors.white,
          backgroundColor: Colors.grey.shade900,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
                size: 34,
              ),
              label: "Ana Sayfa",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 34,
              ),
              label: "Ara",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.library_music,
                color: Colors.white,
                size: 34,
              ),
              label: "Kitaplığın",
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                stops: [
                  0.1,
                  0.5,
                ],
                colors: [
                  Colors.indigo,
                  Colors.black,
                ],
              )),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 45, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyApp()));
                            },
                            child: Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.white,
                              size: 26,
                            )),
                      ),
                      Text(
                        "This Is Rihanna",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 26),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 26,
                        ),
                      ),
                    ],
                  ),
                ), // Üst Kısım
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MuzikOynaticisiDiamonds()));
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("diamonds.png"),
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(right: 35),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Diamonds",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Rihanna",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.green,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ), // Diamonds
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MuzikOynaticisiWhere()));
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("where.jpg"),
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(right: 60),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Work",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Rihanna",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 45),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.green,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ), // Work
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MuzikOynaticisiRudeBoy()));
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("rudeBoy.png"),
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Rude Boy",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Rihanna",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 45),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.green,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ), // Rude Boy
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MuzikOynaticisiUmbrella()));
                    },
                    child: Card(
                      color: Colors.transparent,
                      elevation: 0,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("umbrella.jpg"),
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Umbrella",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Rihanna",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.green,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ), // Umbrella
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MuzikOynaticisiDiamonds()));
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("diamonds.png"),
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(right: 35),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Diamonds",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Rihanna",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.green,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ), // Diamonds
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MuzikOynaticisiWhere()));
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("where.jpg"),
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(right: 60),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Work",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Rihanna",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 45),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.green,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ), // Work
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MuzikOynaticisiRudeBoy()));
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("rudeBoy.png"),
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Rude Boy",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Rihanna",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 45),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.green,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ), // Rude Boy
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MuzikOynaticisiUmbrella()));
                    },
                    child: Card(
                      color: Colors.transparent,
                      elevation: 0,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("umbrella.jpg"),
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Umbrella",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Rihanna",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.green,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ), // Umbrella

              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*


 */
