import 'package:toktik/domain/entities/video_post.dart';

abstract class VideoPostDataSource {
  Future<List<VideoPost>> getTrendingVideoByPage(int page);

  Future<List<String>> getTrendingVideoByUser(String userID);
}
