
class ModelAlbum {
    ModelAlbum({
        this.id,
        this.albumName,
        this.gorsel,
    });

    int? id;
    String? albumName;
    String? gorsel;

    factory ModelAlbum.fromJson(Map<String, dynamic> json) => ModelAlbum(
        id: json["id"],
        albumName: json["albumName"],
        gorsel: json["gorsel"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "albumName": albumName,
        "gorsel": gorsel,
    };
}
