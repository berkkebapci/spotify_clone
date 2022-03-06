import 'package:flutter/material.dart';
import 'package:spotify/controllers/controller_home.dart';
import 'package:spotify/controllers/controller_liked_song.dart';
import 'package:spotify/shared/uicolor.dart';
import 'package:spotify/shared/uitext.dart';
import 'package:spotify/views/view_player.dart';
import 'package:spotify/widgets/widget_text.dart';
import 'package:get/get.dart';

class ViewLikedSongs extends StatefulWidget {
  const ViewLikedSongs({Key? key}) : super(key: key);

  @override
  _ViewLikedSongsState createState() => _ViewLikedSongsState();
}

class _ViewLikedSongsState extends State<ViewLikedSongs> {
  final c = Get.put(ControllerLikedSong());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColor.transparent,
      body: NestedScrollView(
        body: getBody(),
        headerSliverBuilder: (BuildContext context, innerBoxIsScrolled) {
          (innerBoxIsScrolled) ? c.isShow.value = false : c.isShow.value = true;
          (innerBoxIsScrolled) ? c.isVisible.value = true : c.isVisible.value = false;
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.blue.shade900,
              leading: const Icon(Icons.arrow_back),
              automaticallyImplyLeading: false,
              pinned: true,
              expandedHeight: 250.0,
              toolbarHeight: 50.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(UIText.likedSongs),
                titlePadding: innerBoxIsScrolled
                    ? const EdgeInsets.only(bottom: 14, left: 62)
                    : const EdgeInsets.only(top: 30, left: 32, bottom: 10),
                background: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Colors.blue,
                          Colors.black,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.0, 0.5],
                        tileMode: TileMode.clamp),
                  ),
                ),
              ),
            )
          ];
        },
      ),
    );
  }

  Widget getBody() {
    return Obx(() => Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            c.isShow.value ? getSongCount() : Container(),
            c.isShow.value
                ? getDownloadsAndPlayRandom()
                : Container(
                    child: Visibility(
                      visible: c.isVisible.value,
                      child: Container(
                        padding: EdgeInsets.only(right: 12),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: const Icon(
                            Icons.play_circle,
                            color: Colors.green,
                            size: 48,
                          ),
                        ),
                      ),
                    ),
                  ),
            Expanded(child: getPlayLists()),
          ],
        ));
  }

  Widget getSongCount() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 16),
      child: TextBasic(
        text: UIText.songCount,
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Colors.grey,
      ),
    );
  }

  Widget getDownloadsAndPlayRandom() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.download_for_offline_outlined,
            color: Colors.grey.shade500,
            size: 26,
          ),
          const Icon(
            Icons.play_circle,
            color: Colors.green,
            size: 48,
          )
        ],
      ),
    );
  }

  Widget getPlayLists() {
    return Obx(
      () => Container(
        color: UIColor.transparent,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: c.getHomeListSongs!.isNotEmpty
            ? ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: c.getHomeListSongs!.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: InkWell(
                      onTap: () {
                        Get.to(ViewPlaySong());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Image.network(
                              c.getHomeListSongs![index].gorsel!,
                              height: 60,
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Flexible(
                            flex: 4,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    c.getHomeListSongs![index].songName!,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    c.getHomeListSongs![index].singerName!,
                                    style: const TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.favorite,
                                color: Colors.green,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Icon(
                                Icons.more_vert,
                                color: Colors.grey.shade500,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
            : const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
