
class ModelSong {
    ModelSong({
        this.id,
        this.songName,
        this.singerName,
        this.like,
        this.date,
        this.gorsel,
    });

    int? id;
    String? songName;
    String? singerName;
    String? like;
    String? date;
    String? gorsel;

    factory ModelSong.fromJson(Map<String, dynamic> json) => ModelSong(
        id: json["id"],
        songName: json["songName"],
        singerName: json["singerName"],
        like: json["like"],
        date: json["date"],
        gorsel: json["gorsel"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "songName": songName,
        "singerName": singerName,
        "like": like,
        "date": date,
        "gorsel": gorsel,
    };
}
