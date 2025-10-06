import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:toktik/config/helpers/humans_format.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoBotons extends StatelessWidget {
  final VideoPost video;
  const VideoBotons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      _CustomIconButtonn(
        value: video.likes,
        iconColor: Colors.red,
        iconData: Icons.favorite,
      ),
      const SizedBox(
        height: 20,
      ),
      _CustomIconButtonn(
        value: video.views,
        iconColor: Colors.green,
        iconData: Icons.remove_red_eye_outlined,
      ),
      const SizedBox(height: 20),
      SpinPerfect(
        infinite: true,
        duration: const Duration(seconds: 20),
        child: const _CustomIconButtonn(
          value: 0,
          iconColor: Colors.blue,
          iconData: Icons.play_circle_fill_outlined,
        ),
      )
    ]);
  }
}

class _CustomIconButtonn extends StatelessWidget {
  final int value;
  final Color? color;
  final IconData iconData;
  const _CustomIconButtonn(
      {required this.value, required this.iconData, iconColor})
      : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              iconData,
              color: color,
              size: 40,
            )),
        if (value > 0) Text(HumansFormats.humanReadbleNumber(value.toDouble())),
      ],
    );
  }
}
