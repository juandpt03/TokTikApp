import 'package:toktik/domain/entities/video_post.dart';

class LocalVideoModel {
  String caption;
  String videoUrl;
  int likes;
  int views;

  LocalVideoModel({
    required this.caption,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) {
    return LocalVideoModel(
      caption: json['name'] ?? 'No name',
      videoUrl: json['videoUrl'],
      likes: json['likes'] ?? 0,
      views: json['views'] ?? 0,
    );
  }

  VideoPost toVideoPostEntity() => VideoPost(
      caption: caption, videoUrl: videoUrl, likes: likes, views: views);
}
