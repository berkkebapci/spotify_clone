import 'package:flutter/material.dart';
import 'package:spotify/controllers/controller_home.dart';
import 'package:spotify/shared/uicolor.dart';
import 'package:spotify/shared/uitext.dart';
import 'package:spotify/views/view_liked_songs.dart';
import 'package:spotify/views/view_playlists.dart';
import 'package:spotify/widgets/widget_text.dart';
import 'package:get/get.dart';

class ViewHome extends StatefulWidget {
  const ViewHome({Key? key}) : super(key: key);

  @override
  _ViewHomeState createState() => _ViewHomeState();
}

class _ViewHomeState extends State<ViewHome> {
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
            child: Row(
              children: [
                const Icon(Icons.notifications_none),
                const SizedBox(
                  width: 8,
                ),
                const Icon(Icons.timer),
                const SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.settings_outlined,
                  color: UIColor.white,
                ),
              ],
            )),
      ],
      title: getTitles(),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          getTopPlayLists(),
          getForYouTitle(),
          getForYou(),
          getRecentlyTitle(),
          getRecently(),
        ],
      ),
    );
  }

  Widget getTitles() {
    return TextBasic(
      text: UIText.homeTitle,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );
  }

  Widget getTopPlayLists() {
    return Obx(() => Container(
        height: 240,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: c.getHomeListAlbums!.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : GridView.builder(
                physics: const ScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    mainAxisExtent: 70),
                itemCount: 6,
                itemBuilder: (BuildContext ctx, index) {
                  return getHomePlaylist(c.getHomeListAlbums![index].albumName!,
                      c.getHomeListAlbums![index].gorsel!);
                })));
  }

  Widget getForYouTitle() {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 20, bottom: 16),
      child: TextBasic(
        text: UIText.homeForYou,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget getForYou() {
    return Obx(
      () => Container(
        color: UIColor.transparent,
        padding: const EdgeInsets.only(
          top: 4,
          bottom: 16,
        ),
        height: 150,
        child: c.getHomeListAlbums!.isNotEmpty
            ? ListView.builder(
                physics: const ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: c.getHomeListAlbums!.length,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Get.to(const ViewPlayLists());
                    },
                    child: Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 8,
                              right: 8,
                              bottom: 4,
                            ),
                            child: Image.network(
                                c.getHomeListAlbums![index].gorsel!),
                          ),
                        ),
                        Text(
                          c.getHomeListAlbums![index].albumName!,
                          style: const TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  );
                },
              )
            : const Center(child: CircularProgressIndicator()),
      ),
    );
  }

  Widget getHomePlaylist(String playListName, String image) {
    return GestureDetector(
      onTap: () {
        Get.to(const ViewLikedSongs());
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.grey.shade700),
        margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
        child: Row(
          children: [
            Flexible(
              flex: 2,
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 8),
            Flexible(
              flex: 3,
              child: TextBasic(
                text: playListName,
                maxLines: 2,
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getRecentlyTitle() {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 20, bottom: 16),
      child: TextBasic(
        text: UIText.recently,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget getRecently() {
    return Obx(
      () => Container(
        color: UIColor.transparent,
        padding: const EdgeInsets.only(
          top: 4,
          bottom: 16,
        ),
        height: 150,
        child: c.getHomeListAlbumReversed!.isNotEmpty
            ? ListView.builder(
                physics: const ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: c.getHomeListAlbumReversed!.length,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Get.to(const ViewPlayLists());
                    },
                    child: Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 8,
                              right: 8,
                              bottom: 4,
                            ),
                            child: Image.network(
                                c.getHomeListAlbumReversed![index].gorsel!),
                          ),
                        ),
                        Text(
                          c.getHomeListAlbumReversed![index].albumName!,
                          style: const TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  );
                },
              )
            : const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
