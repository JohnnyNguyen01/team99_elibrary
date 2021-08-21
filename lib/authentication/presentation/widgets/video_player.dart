import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:video_player/video_player.dart';

/// [CustomVideoPlayer] widget used to play videos
class CustomVideoPlayer extends StatefulHookWidget {
  /// Constructs an instance of [CustomVideoPlayer]
  const CustomVideoPlayer({
    this.height,
    this.width,
  });

  /// Video player height
  final double? height;

  /// Video Player width
  final double? width;

  @override
  _CustomVidieoPlayerState createState() => _CustomVidieoPlayerState();
}

class _CustomVidieoPlayerState extends State<CustomVideoPlayer> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    // TODO: Refactor to make link re-usable
    _controller = VideoPlayerController.network(
      'https://github.com/JohnnyNguyen01/team99_elibrary/blob/dev/assets/videos/wsu_library.mp4?raw=true',
      videoPlayerOptions: VideoPlayerOptions(),
    );
    _controller
      ..setLooping(true)
      ..setVolume(0);
    Future.microtask(() async {
      await _controller.initialize().then((_) {
        setState(() {});
      }).then(
        (_) => _controller.play(),
      );
    });
  }

  @override
  Widget build(BuildContext context) => !_controller.value.hasError
      ? VideoPlayer(_controller)
      : const SizedBox(
          child: Center(
            child: Text('Error loading video'),
          ),
        );

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
