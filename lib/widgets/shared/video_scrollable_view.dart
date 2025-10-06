import 'package:flutter/material.dart';
import 'package:toktik/widgets/shared/video_player/video_bottons.dart';
import 'package:toktik/widgets/video/full_screen_player.dart';

import '../../domain/entities/video_post.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;
  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: videos.length,
        itemBuilder: ((context, index) {
          final VideoPost videoPost = videos[index];

          return Stack(children: [
            // Video Player + gradiente
            SizedBox.expand(
              child: FullScreenPlayer(
                caption: videoPost.caption,
                videoUrl: videoPost.videoUrl,
              ),
            ),
            // Botones
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoBotons(video: videoPost),
            )
          ]);
        }));
  }
}
