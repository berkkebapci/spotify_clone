import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:spotify_clone/billieEilish.dart';
import 'package:spotify_clone/rihanna.dart';

class MuzikOynaticisiRudeBoy extends StatefulWidget {
  @override
  _MuzikOynaticisiRudeBoyState createState() => _MuzikOynaticisiRudeBoyState();
}

class _MuzikOynaticisiRudeBoyState extends State<MuzikOynaticisiRudeBoy> {
  AudioPlayer advancedPlayer;
  AudioCache audioCache;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 1,
        child: Scaffold(
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
                                          builder: (context) =>
                                              Rihanna()));
                                },
                                child: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.white,
                                  size: 26,
                                )),
                          ),
                          Column(
                            children: [
                              Text(
                                "ÇALMA LİSTESİNDEN ÇALINIYOR",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text(
                                "This Is Rihanna",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ],
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
                    Image(
                        image: AssetImage("rudeBoy.png"),
                        width: 375,
                        height: 375,
                        fit: BoxFit.cover),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30, top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: Text(
                                  "Rude Boy",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Text(
                                  "Rihanna",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.green,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Slider(
                        value: 0,
                        activeColor: Colors.white,
                        min: 0,
                        max: 100,
                        inactiveColor: Colors.white,
                        onChanged: (value) {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "0:00",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            "3:30",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 18, horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.shuffle,
                            color: Colors.white,
                            size: 35,
                          ),
                          Icon(
                            Icons.skip_previous,
                            color: Colors.white,
                            size: 35,
                          ),
                          GestureDetector(
                            child: Icon(
                              Icons.play_circle_fill,
                              color: Colors.white,
                              size: 75,
                            ),
                          ),
                          Icon(
                            Icons.skip_next,
                            color: Colors.white,
                            size: 35,
                          ),
                          Icon(
                            Icons.repeat_outlined,
                            color: Colors.white,
                            size: 35,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 25, horizontal: 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.devices_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          Icon(
                            Icons.format_list_bulleted,
                            color: Colors.white,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: 30,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
