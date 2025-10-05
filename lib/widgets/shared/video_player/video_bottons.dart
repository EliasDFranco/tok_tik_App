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
      _CustomIconButtonn(
        value: video.views,
        iconColor: Colors.green,
        iconData: Icons.remove_red_eye_outlined,
      ),
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
        Text(HumansFormats.humanReadbleNumber(value.toDouble())),
      ],
    );
  }
}
