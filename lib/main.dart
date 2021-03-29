import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/begenilenSarkilar.dart';
import 'package:spotify_clone/dailyMix1.dart';
import 'package:spotify_clone/dailyMix2.dart';
import 'package:spotify_clone/dailyMix3.dart';
import 'package:spotify_clone/dailyMix4.dart';
import 'package:spotify_clone/haftalikKesif.dart';
import 'package:spotify_clone/hotHitsTurkiye.dart';
import 'package:spotify_clone/rihanna.dart';
import 'package:spotify_clone/top50.dart';
import 'package:spotify_clone/turkceSarkilar.dart';
import 'package:spotify_clone/yabanciPop.dart';
import 'package:spotify_clone/yeniMuzikRadari.dart';
import 'billieEilish.dart';
import 'dailyMix5.dart';

void main() {
  runApp(MyApp());
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('assets/spotify.jpg', width: 40, height: 40,),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Spotify'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int seciliSayfa = 0;
  void initState(){/*
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
    });*/
  }
  void sayfaDegistir(int index) {
    setState(() {
      seciliSayfa = index;
    });
  }
  Widget sayfaGoster(int seciliSayfa) {
    if (seciliSayfa == 0) {
      return sayfa1();
    } else if (seciliSayfa == 1) {
      return sayfa2();
    } else if (seciliSayfa == 2) {
      return sayfa3();
    }
  }

  Widget sayfa1() {
    return Container(
      child: Center(
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      top: 40, bottom: 15, left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tünaydın",
                        style: TextStyle(
                            fontSize: 31,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 35,
                      ),
                    ],
                  ),
                ), // Tünaydın
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 90,
                        width: 200,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BegenilenSarkilar()));
                          },
                          child: Card(
                            color: Colors.white10,
                            child: Row(
                              children: [
                                Image(
                                    image: AssetImage("love.png"),
                                    width: 80,
                                    height: 100,
                                    fit: BoxFit.cover),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    """Beğenilen\nŞarkılar """,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ), //Beğenilen Şarkılar
                      SizedBox(
                        height: 90,
                        width: 200,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TurkceSarkilar()));
                          },
                          child: Card(
                            color: Colors.white10,
                            child: Row(
                              children: [
                                Image(
                                    image: AssetImage("buray.jpg"),
                                    width: 80,
                                    height: 100,
                                    fit: BoxFit.cover),
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 15, top: 5),
                                  child: Text(
                                    """Türkçe\nŞarkılar""",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ), //Türkçe Şarkılar
                    ],
                  ),
                ), // İlk Satır
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 90,
                        width: 200,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => YeniMuzikRadari()));
                          },
                          child: Card(
                            color: Colors.white10,
                            child: Row(
                              children: [
                                Image(
                                    image: AssetImage("yeniMuzikRadar.jpg"),
                                    width: 80,
                                    height: 100,
                                    fit: BoxFit.cover),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    """Yeni Müzik\nRadarı """,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ), //Yeni Müzik Radarı
                      SizedBox(
                        height: 90,
                        width: 200,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HaftalikKesif()));
                          },
                          child: Card(
                            color: Colors.white10,
                            child: Row(
                              children: [
                                Image(
                                    image: AssetImage("haftalikKesif.jpg"),
                                    width: 80,
                                    height: 100,
                                    fit: BoxFit.cover),
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 15, top: 5),
                                  child: Text(
                                    """Haftalık\nKeşif""",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ), //Haftalık Keşif
                    ],
                  ),
                ), // İkinci Satır
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 90,
                        width: 200,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => YabanciPop()));
                          },
                          child: Card(
                            color: Colors.white10,
                            child: Row(
                              children: [
                                Image(
                                    image: AssetImage("duaLipa.png"),
                                    width: 80,
                                    height: 100,
                                    fit: BoxFit.cover),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    """Yabancı\nPop """,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ), //Yabancı Pop
                      SizedBox(
                        height: 90,
                        width: 200,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HotHitsTurkiye()));
                          },
                          child: Card(
                            color: Colors.white10,
                            child: Row(
                              children: [
                                Image(
                                    image: AssetImage("hotHits.jpg"),
                                    width: 80,
                                    height: 100,
                                    fit: BoxFit.cover),
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 15, top: 5),
                                  child: Text(
                                    """Hot\nHits Türkiye""",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ), //Hot Hits Türkiye
                    ],
                  ),
                ), // Üçüncü Satır
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 35, bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Yakınlarda Çalınanlar",
                        style: TextStyle(
                            fontSize: 31,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ), // Yakınlarda Çalınanlar
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          height: 230,
                          width: 180,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BillieEilish()));
                            },
                            child: Card(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Image(
                                      height: 180,
                                      width: 180,
                                      image: AssetImage("billieEilish.jpg"),
                                      fit: BoxFit.cover),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "This Is Billie Eilish",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ), //This Is Billie Eilish
                        SizedBox(
                          height: 230,
                          width: 180,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BegenilenSarkilar()));
                            },
                            child: Card(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Image(
                                      height: 180,
                                      width: 180,
                                      image: AssetImage("love.png"),
                                      fit: BoxFit.cover),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Beğenilen Şarkılar",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ), //Beğenilen Şarkılar
                        SizedBox(
                          height: 230,
                          width: 180,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BegenilenSarkilar()));
                            },
                            child: Card(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Image(
                                      height: 180,
                                      width: 180,
                                      image: AssetImage("dailyMix1.jpg"),
                                      fit: BoxFit.cover),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Daily Mix 1",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ), //Daily Mix 1
                        SizedBox(
                          height: 230,
                          width: 180,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Top50()));
                            },
                            child: Card(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Image(
                                      height: 180,
                                      width: 180,
                                      image: AssetImage("top50.jpg"),
                                      fit: BoxFit.cover),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Top 50",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ), //Top 50
                      ],
                    ),
                  ),
                ), // Beşinci Satır Büyük Satır
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 35, bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Günlük Müzik İhtiyacın",
                        style: TextStyle(
                            fontSize: 31,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ), // Günlük Müzik İhtiyacın
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          height: 232,
                          width: 180,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Rihanna()));
                            },
                            child: Card(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Image(
                                      height: 180,
                                      width: 180,
                                      image: AssetImage("rihanna.jpg"),
                                      fit: BoxFit.cover),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "This Is Rihanna",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ), //This Is Rihanna
                        SizedBox(
                          height: 230,
                          width: 180,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BegenilenSarkilar()));
                            },
                            child: Card(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Image(
                                      height: 180,
                                      width: 180,
                                      image: AssetImage("love.png"),
                                      fit: BoxFit.cover),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Beğenilen Şarkılar",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ), //Beğenilen Şarkılar
                        SizedBox(
                          height: 230,
                          width: 180,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HaftalikKesif()));
                            },
                            child: Card(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Image(
                                      height: 180,
                                      width: 180,
                                      image: AssetImage("haftalikKesif.jpg"),
                                      fit: BoxFit.cover),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Haftalık Keşif",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ), //Haftalık Keşif
                        SizedBox(
                          height: 230,
                          width: 180,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Top50()));
                            },
                            child: Card(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Image(
                                      height: 180,
                                      width: 180,
                                      image: AssetImage("top50.jpg"),
                                      fit: BoxFit.cover),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Top 50",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ), //Top 50
                      ],
                    ),
                  ),
                ), // Altıncı Satır Büyük Satır
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 35, bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Berk Kebapcı İçin Derlendi",
                        style: TextStyle(
                            fontSize: 31,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ), // Berk Kebapcı İçin Derlendi
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          height: 230,
                          width: 180,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DailyMix1()));
                            },
                            child: Card(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Image(
                                      height: 180,
                                      width: 180,
                                      image: AssetImage("dailyMix1.jpg"),
                                      fit: BoxFit.cover),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Daily Mix 1",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ), //Daily Mix 1
                        SizedBox(
                          height: 230,
                          width: 180,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DailyMix2()));
                            },
                            child: Card(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Image(
                                      height: 180,
                                      width: 180,
                                      image: AssetImage("dailyMix2.jpg"),
                                      fit: BoxFit.cover),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Daily Mix 2",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ), //Daily Mix 2
                        SizedBox(
                          height: 230,
                          width: 180,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DailyMix3()));
                            },
                            child: Card(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Image(
                                      height: 180,
                                      width: 180,
                                      image: AssetImage("dailyMix3.jpg"),
                                      fit: BoxFit.cover),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Daily mix 3",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ), //Daily Mix 3
                        SizedBox(
                          height: 230,
                          width: 180,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DailyMix4()));
                            },
                            child: Card(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Image(
                                      height: 180,
                                      width: 180,
                                      image: AssetImage("dailyMix4.jpg"),
                                      fit: BoxFit.cover),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Daily Mix 4",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ), //Daily Mix 4
                        SizedBox(
                          height: 230,
                          width: 180,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DailyMix5()));
                            },
                            child: Card(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Image(
                                      height: 180,
                                      width: 180,
                                      image: AssetImage("dailyMix5.jpg"),
                                      fit: BoxFit.cover),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Daily Mix 5",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ), //Daily Mix 5
                      ],
                    ),
                  ),
                ), // Yedinci Satır Büyük Satır
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget sayfa2() {
    return Container(
      child: Center(
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 35, bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Berk Kebapcı İçin Derlendi",
                        style: TextStyle(
                            fontSize: 31,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ), // Berk Kebapcı İçin Derlendi
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          height: 230,
                          width: 180,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DailyMix1()));
                            },
                            child: Card(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Image(
                                      height: 180,
                                      width: 180,
                                      image: AssetImage("dailyMix1.jpg"),
                                      fit: BoxFit.cover),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Daily Mix 1",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ), //Daily Mix 1
                        SizedBox(
                          height: 230,
                          width: 180,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DailyMix2()));
                            },
                            child: Card(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Image(
                                      height: 180,
                                      width: 180,
                                      image: AssetImage("dailyMix2.jpg"),
                                      fit: BoxFit.cover),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Daily Mix 2",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ), //Daily Mix 2
                        SizedBox(
                          height: 230,
                          width: 180,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DailyMix3()));
                            },
                            child: Card(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Image(
                                      height: 180,
                                      width: 180,
                                      image: AssetImage("dailyMix3.jpg"),
                                      fit: BoxFit.cover),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Daily mix 3",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ), //Daily Mix 3
                        SizedBox(
                          height: 230,
                          width: 180,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DailyMix4()));
                            },
                            child: Card(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Image(
                                      height: 180,
                                      width: 180,
                                      image: AssetImage("dailyMix4.jpg"),
                                      fit: BoxFit.cover),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Daily Mix 4",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ), //Daily Mix 4
                        SizedBox(
                          height: 230,
                          width: 180,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DailyMix5()));
                            },
                            child: Card(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Image(
                                      height: 180,
                                      width: 180,
                                      image: AssetImage("dailyMix5.jpg"),
                                      fit: BoxFit.cover),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Daily Mix 5",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ), //Daily Mix 5
                      ],
                    ),
                  ),
                ), // Yedinci Satır Büyük Satır
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget sayfa3() {
    return Container(
      child: Center(
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 35, bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Berk Kebapcı İçin Derlendi",
                        style: TextStyle(
                            fontSize: 31,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ), // Berk Kebapcı İçin Derlendi
              ],
            ),
          ),
        ),
      ),
    );
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
      body: sayfa1(),
    );
  }
}
