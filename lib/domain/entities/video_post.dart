class VideoPost {
  final String caption;
  final String videoUrl;
  final int like;
  final int views;

  VideoPost(
      {required this.caption,
      required this.videoUrl,
      this.like = 0,
      this.views = 0});
}
