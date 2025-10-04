import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infraestructure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  bool iniciallLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadingNextPage() async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoPost.fromJsonMap(video).toVideoPostEntity())
        .toList();

    videos.addAll(newVideos);
    iniciallLoading = false;
    notifyListeners();
  }
}
