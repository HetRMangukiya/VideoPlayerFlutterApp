import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:video_player_app/VideoController.dart';

class FullscreenVideoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<VideoController>(
        builder: (controller) {
          return GestureDetector(
            onTap: controller.exitFullscreen,
            child: Center(
              child: AspectRatio(
                aspectRatio: controller.videoPlayerController.value.aspectRatio,
                child: VideoPlayer(controller.videoPlayerController),
              ),
            ),
          );
        },
      ),
    );
  }
}
