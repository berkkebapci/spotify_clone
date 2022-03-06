import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:spotify/models/model_albums.dart';
import 'package:spotify/models/model_songs.dart';

class ControllerLikedSong extends GetxController {

  RxBool isShow = true.obs;
  RxBool isVisible = false.obs;
  @override
  void onInit() async {
    super.onInit();
    init();
  }

  Future<void> init() async {
    await getSongs();
  }

  final RxList<ModelSong> _getHomeListSongs = <ModelSong>[].obs;
  List<ModelSong>? get getHomeListSongs => _getHomeListSongs;


  Future<void> getSongs() async {
    var response = await http.get(Uri.parse(
        'https://raw.githubusercontent.com/berkkebapci/json_files/main/songs.json'));
    var jsonData = json.decode(response.body);
    List<ModelSong> modelSong =
        jsonData.map<ModelSong>((i) => ModelSong.fromJson(i)).toList();
    if (response.statusCode == 200) {
      _getHomeListSongs.value = modelSong;
    } else {
      Get.snackbar("Hata", response.body);
    }
  }

}
