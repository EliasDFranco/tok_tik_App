import 'package:toktik/domain/datasource/video_post_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';

import '../../shared/data/local_video_post.dart';
import '../models/local_video_model.dart';

class LocalVideoDataSource implements VideoPostDataSource {
  @override
  Future<List<VideoPost>> getTrendingVideoByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoPost.fromJsonMap(video).toVideoPostEntity())
        .toList();

    return newVideos;
  }

  @override
  Future<List<String>> getTrendingVideoByUser(String userID) {
    throw UnimplementedError();
  }
}
