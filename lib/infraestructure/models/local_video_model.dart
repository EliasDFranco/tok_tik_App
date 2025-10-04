import 'package:toktik/domain/entities/video_post.dart';

class LocalVideoPost {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoPost(
      {required this.name,
      required this.videoUrl,
      required this.likes,
      required this.views});

  factory LocalVideoPost.fromJsonMap(Map<String, dynamic> json) =>
      LocalVideoPost(
          name: json["name"] ?? "No name",
          videoUrl: json["videoUrl"],
          likes: json["likes"] ?? 0,
          views: json["views"] ?? 0);

  Map<String, dynamic> toJson() => {
        "name": name,
        "videoUrl": videoUrl,
        "likes": likes,
        "views": views,
      };

  VideoPost toVideoPostEntity() => VideoPost(
      caption: name, videoUrl: videoUrl, likes: likes, views: views, name: '');

  static fromJson(videos) {}
}
