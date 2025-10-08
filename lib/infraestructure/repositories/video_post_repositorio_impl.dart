import 'package:toktik/domain/entities/video_post.dart';

import '../../domain/repositories/video_post_repositorie.dart';

class VideoPostsRepositorie implements VideoPostRepositorie {
  final VideoPostRepositorie videosDataSource;
  VideoPostsRepositorie({required this.videosDataSource});
  @override
  Future<List<VideoPost>> getTrendingVideoByPage(int page) {
    return videosDataSource.getTrendingVideoByPage(page);
  }

  @override
  Future<List<VideoPost>> getTrendingVideoByUser(String userID) {
    // TODO: implement getTrendingVideoByUser
    throw UnimplementedError();
  }
}
