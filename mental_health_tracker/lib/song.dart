import 'dart:convert';

Song songFromJson(String str) => Song.fromJson(json.decode(str));
String songToJson(Song data) => json.encode(data.toJson());


class Song {
    Song({
        required this.id,
        required this.title,
        required this.artist,
        required  this.releaseDate,
    });

    int id;
    String title;
    String artist;
    DateTime releaseDate;



factory Song.fromJson(Map<String, dynamic> json) => Song(
    id: json["id"],
    title: json["title"],
    artist: json["artist"],
    releaseDate: json["releaseDate"],
);

Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "artist": artist,
    "releaseDate": releaseDate,
};

}

