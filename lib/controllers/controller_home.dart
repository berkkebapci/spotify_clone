import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:spotify/models/model_albums.dart';
import 'package:spotify/models/model_songs.dart';

class ControllerHome extends GetxController {


  @override
  void onInit() async {
    super.onInit();
    init();
  }

  Future<void> init() async {
    await getSongs();
    await getAlbums();
  }

  final RxList<ModelSong> _getHomeListSongs = <ModelSong>[].obs;
  List<ModelSong>? get getHomeListSongs => _getHomeListSongs;

  final RxList<ModelAlbum> _getHomeListAlbums = <ModelAlbum>[].obs;
  List<ModelAlbum>? get getHomeListAlbums => _getHomeListAlbums;

  final RxList<ModelAlbum> _getHomeListAlbumReversed = <ModelAlbum>[].obs;
  List<ModelAlbum>? get getHomeListAlbumReversed => _getHomeListAlbumReversed;

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

  Future<void> getAlbums() async {
    var response = await http.get(Uri.parse(
        'https://raw.githubusercontent.com/berkkebapci/json_files/main/albums.json'));
    var jsonData = json.decode(response.body);
    List<ModelAlbum> modelAlbum =
        jsonData.map<ModelAlbum>((i) => ModelAlbum.fromJson(i)).toList();
    if (response.statusCode == 200) {
      _getHomeListAlbums.value = modelAlbum;

      _getHomeListAlbumReversed.value = modelAlbum;
      _getHomeListAlbumReversed.value =
          _getHomeListAlbumReversed.reversed.toList();
    } else {
      Get.snackbar("Hata", response.body);
    }
  }
}
