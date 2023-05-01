import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:toktik/config/helpers/human_formats.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;

  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
          value: video.likes,
          icon: Icons.favorite,
          color: Colors.red,
        ),
        const SizedBox(
          height: 20,
        ),
        _CustomIconButton(
          value: video.views,
          icon: Icons.remove_red_eye_outlined,
        ),
        const SizedBox(
          height: 20,
        ),
        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 4),
          child: const _CustomIconButton(
            value: 0,
            icon: Icons.play_circle_outline,
          ),
        ),
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final IconData icon;
  final Color? color;
  final int value;

  const _CustomIconButton(
      {required this.icon, this.color, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Icon(
            icon,
            color: color ?? Colors.white,
            size: 30,
          ),
          onPressed: () {},
        ),
        if (value > 0)
          Text(
            HumanFormats.humanReadableNumber(
              value.toDouble(),
            ),
          ),
      ],
    );
  }
}
