class Songs {
  final String artist;
  final String imgUrl;
  final String title;

  const Songs({
    required this.artist,
    required this.imgUrl,
    required this.title,
  });

  factory Songs.fromJson(Map<String, dynamic> json) => Songs(
        artist: json['artist'],
        imgUrl: json['img_url'],
        title: json['title'],
      );

  Map<String, dynamic> toJson() => {
        'artist': artist,
        'img_url': imgUrl,
        'title': title,
      };
}
