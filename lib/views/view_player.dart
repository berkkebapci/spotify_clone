import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:spotify/controllers/controller_player.dart';
import 'package:spotify/shared/uicolor.dart';
import 'package:get/get.dart';
import 'package:spotify/widgets/widget_text.dart';

class ViewPlaySong extends StatefulWidget {
  const ViewPlaySong({Key? key}) : super(key: key);

  @override
  _ViewPlaySongState createState() => _ViewPlaySongState();
}

class _ViewPlaySongState extends State<ViewPlaySong> {
  final c = Get.put(ControllerPlayer());
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Colors.redAccent,
              Colors.black87,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.4],
            tileMode: TileMode.clamp),
      ),
      child: Obx(
        () => Scaffold(
          backgroundColor: UIColor.transparent,
          appBar: getAppBar(),
          body: getBody(),
        ),
      ),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.keyboard_arrow_down)),
      title: Text(
        "Çalma Listesinden Çalınıyor",
        style: TextStyle(fontSize: 12),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Icon(
            Icons.more_vert,
            color: UIColor.white,
          ),
        ),
      ],
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          getSongImage(),
          getSongTitle(),
          getSlider(),
          getSongTools(),
        ],
      ),
    );
  }

  Widget getSongImage() {
    return Center(
        child: Image.network(
      c.getHomeListSongs![1].gorsel!,
      height: 280,
    ));
  }

  Widget getSongTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 40,
                  width: 250,
                  child: Marquee(
                    text: "Song Name ",
                    style: TextStyle(color: Colors.white, fontSize: 19),
                    velocity: 50,
                  )),
              SizedBox(
                height: 4,
              ),
              Text(
                "Singer Name",
                style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
              ),
            ],
          ),
          Icon(Icons.favorite, color: Colors.white),
        ],
      ),
    );
  }

  Widget getSlider() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Obx(
            () => Slider(
              inactiveColor: Colors.grey.shade800,
              activeColor: Colors.white,
              min: 0.0,
              max: 3*60+40,
              value: c.value.value,
              onChanged: (value) {
                c.value.value = value;
                print("Slider Value: $value");
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                c.getDuration(),
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const Text(
                "3:40",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget getSongTools() {
    RxBool isSelected = false.obs;
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.shuffle,
                  color: Colors.white,
                  size: 42,
                ),
                const Icon(
                  Icons.skip_previous,
                  color: Colors.white,
                  size: 42,
                ),
                Obx(
                  () => GestureDetector(
                    onTap: () {
                      isSelected.value == true
                          ? isSelected.value = false
                          : isSelected.value = true;
                      print(isSelected);
                    },
                    child: Icon(
                      isSelected.value == true
                          ? Icons.play_circle_fill
                          : Icons.pause_circle,
                      color: Colors.white,
                      size: 72,
                    ),
                  ),
                ),
                const Icon(
                  Icons.skip_next,
                  color: Colors.white,
                  size: 42,
                ),
                const Icon(
                  Icons.repeat,
                  color: Colors.green,
                  size: 42,
                )
              ],
            )
          ],
        ));
  }
}
