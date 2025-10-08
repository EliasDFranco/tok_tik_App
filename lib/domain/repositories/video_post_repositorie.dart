import 'package:toktik/domain/entities/video_post.dart';

abstract class VideoPostRepositorie {
  Future<List<VideoPost>> getTrendingVideoByUser(String userID);

  Future<List<VideoPost>> getTrendingVideoByPage(int page);
}
