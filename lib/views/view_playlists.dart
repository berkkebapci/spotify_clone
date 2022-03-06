import 'package:flutter/material.dart';
import 'package:spotify/controllers/controller_home.dart';
import 'package:spotify/shared/uicolor.dart';
import 'package:get/get.dart';
import 'package:spotify/widgets/widget_text.dart';

class ViewPlayLists extends StatefulWidget {
  const ViewPlayLists({Key? key}) : super(key: key);

  @override
  _ViewPlayListsState createState() => _ViewPlayListsState();
}

class _ViewPlayListsState extends State<ViewPlayLists> {
  final c = Get.put(ControllerHome());
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Colors.redAccent,
              Colors.black,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.2],
            tileMode: TileMode.clamp),
      ),
      child: Scaffold(
        backgroundColor: UIColor.transparent,
        appBar: getAppBar(),
        body: getBody(),
      ),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Icon(
            Icons.settings_outlined,
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
          getTitles(),
          Container(
              height: 600,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: getPlaylist(c.getHomeListSongs![index].singerName!, c.getHomeListSongs![index].gorsel!)
                  );
                },
              )),
        ],
      ),
    );
  }

  Widget getTitles() {
    return const Padding(
      padding: EdgeInsets.only(left: 16, bottom: 16),
      child: TextBasic(
        text: "Playlist title",
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget getPlaylist(String playListName, String image) {
    return Container(
      width: 180,
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      color: UIColor.gray,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Image.network(
                image,
                fit: BoxFit.contain,
                width: 50,
              )),
          const SizedBox(width: 8),
          Expanded(
            flex: 3,
            child: TextBasic(
              text: playListName,
              maxLines: 2,
            ),
          )
        ],
      ),
    );
  }
}
