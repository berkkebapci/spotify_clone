import "package:flutter/material.dart";
import 'package:spotify_clone/main.dart';
import 'package:spotify_clone/muzikOynaticisiBichota.dart';
import 'package:spotify_clone/muzikOynaticisiDameloTo.dart';
import 'package:spotify_clone/muzikOynaticisiFotia.dart';
import 'package:spotify_clone/muzikOynaticisiRunnin.dart';
import 'package:spotify_clone/muzikOynaticisiStephanie.dart';
import 'package:spotify_clone/muzikOynaticisiStreets.dart';
import 'package:spotify_clone/muzikOynaticisiSwag.dart';
import 'package:spotify_clone/muzikOynaticisiWeAreGood.dart';
import 'package:spotify_clone/muzikOynaticisiWhoopty.dart';
import 'package:spotify_clone/smthStupid.dart';
import 'muzikOynaticisiMarshmallow.dart';

class BegenilenSarkilar extends StatefulWidget {
  @override
  _BegenilenSarkilarState createState() => _BegenilenSarkilarState();
}

class _BegenilenSarkilarState extends State<BegenilenSarkilar> {
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
                        "Beğenilen Şarkılar",
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
                              builder: (context) => MuzikOynaticisiMarshmallow()));
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("marshmallow.jpg"),
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Marshmallow",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Zusje",
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
                ), // Marshmallow
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MuzikOynaticisiWhoopty()));
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("whoopty.jpg"),
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Whoopty        ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "CJ",
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
                ), // Whoopty
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MuzikOynaticisiRunnin()));
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("runnin.jpg"),
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Runnin",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Eva Parmakova",
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
                ), // Runnin
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MuzikOynaticisiWeAreGood()));
                    },
                    child: Card(
                      color: Colors.transparent,
                      elevation: 0,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("weAreGood.jpg"),
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "We Are Good",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Dua Lipa",
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
                ), // We Are Good
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MuzikOynaticisiBichota()));
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("bichota.jpg"),
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Bichota          ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Karol G",
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
                ), // Bichota
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MuzikOynaticisiDameloTo()));
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("dameloTo.jpg"),
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Damelo To     ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Selena Gomez",
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
                ), // Damelo To
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MuzikOynaticisiFotia()));
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("fotia.png"),
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Fotia               ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Evangelia",
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
                ), // Fotia
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MuzikOynaticisiSmthStupid()));
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("smthStupid.jpg"),
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Something Stupid",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Jonas Blue",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
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
                ), // Something Stupid
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MuzikOynaticisiStephanie()));
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("stephanie.jpg"),
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Stephanie     ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Drama B",
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
                ), // Stephanie
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MuzikOynaticisiStreets()));
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("streets.jpg"),
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Streets           ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Doja Cat",
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
                ), // Streets
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MuzikOynaticisiSwag()));
                    },
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: AssetImage("swag.jpg"),
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.only(right: 35),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "My New Swag",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "Bwood",
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
                ), // Swag
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
