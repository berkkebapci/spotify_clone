import "package:flutter/material.dart";
import 'package:spotify_clone/main.dart';
import 'package:spotify_clone/muzikOynaticisiAstronaut.dart';
import 'package:spotify_clone/muzikOynaticisiBosYapma.dart';
import 'package:spotify_clone/muzikOynaticisiHasbelKader.dart';
import 'package:spotify_clone/muzikOynaticisiOlsun.dart';
import 'package:spotify_clone/muzikOynaticisiSeniOptugumSokak.dart';
import 'package:spotify_clone/muzikOynaticisiSeninYuzunden.dart';
import 'package:spotify_clone/muzikOynaticisiVerOZaman.dart';
import 'package:spotify_clone/muzikoynaticisiBirakmanDogruMu.dart';
import 'muzikOynaticisiEllerimKirilaydi.dart';
import 'muzikOynaticisiGuya.dart';
import 'muzikOynaticisiHepsiGeciyor.dart';
import 'muzikOynaticisiMartilar.dart';

class TurkceSarkilar extends StatefulWidget {
  @override
  _TurkceSarkilarState createState() => _TurkceSarkilarState();
}

class _TurkceSarkilarState extends State<TurkceSarkilar> {
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
                        "Türkçe Şarkılar",
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
                              builder: (context) => MuzikOynaticisiEllerimKirilaydi()));
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("ellerimKirilaydi.jpg"),
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ah Ellerim Kırılaydı",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Tuğçe Kandemir",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4),
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
                ), // Ellerim Kırılaydı
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MuzikOynaticisiBosYapma()));
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("zeynep.jpg"),
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(right: 35),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Boş Yapma",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Zeynep Bastık",
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
                              Icons.favorite_border,
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
                ), // Boş Yapma
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MuzikOynaticisiOlsun()));
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("senHicYorulma.jpg"),
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(right: 80),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hadise",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Olsun",
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
                ), // Olsun
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MuzikOynaticisiSeninYuzunden()));
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("seninYuzunden.jpg"),
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Senin Yüzünden",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Buray",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
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
                ), // Senin Yüzünden
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MuzikOynaticisiGuya()));
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("guya.jpg"),
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(right: 60),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Guya          ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Irmak Arıcı",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Icon(
                              Icons.favorite_border,
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
                ), // Güya
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MuzikOynaticisiHepsiGeciyor()));
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("hepsiGeciyor.jpg"),
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(right: 35),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hepsi Geçiyor",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Oğuzhan Koç",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
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
                ), // Hepsi Geçiyor
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MuzikOynaticisiMartilar()));
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("martilar.jpg"),
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(right: 80),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Martılar",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Edis",
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
                            padding: const EdgeInsets.only(left: 15),
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ), // Martılar
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MuzikOynaticisiSeni()));
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("ellerimKirilaydi.jpg"),
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Seni Öptüğüm Sokak",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Tuğçe Kandemir",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Icon(
                              Icons.favorite_border,
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
                ), // Seni Öptüğüm Sokak
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MuzikOynaticisiVer()));
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("verOZamanGomleklerimi.jpg"),
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(right: 60),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ver O Zaman",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Sıla & Yalın",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 1),
                            child: Icon(
                              Icons.favorite_border,
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
                ), // Ver O Zaman Gömleklerimi
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MuzikOynaticisiHasbel()));
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("hasbelKader.jpg"),
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "HasbelKader",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Bilal Sonses & Yıldız Tilbe",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 2),
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
                ), // HasbelKader
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MuzikOynaticisiBirakman()));
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("zeynep.jpg"),
                              width: 70,
                              height: 70,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Bırakman Doğru Mu",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Zeynep Bastık",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
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
                ), // Bırakman Doğru Mu?
              ],
            ),
          ),
        ),
      ),
    );
  }
}

