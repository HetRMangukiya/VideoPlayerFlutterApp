import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:video_player_app/VideoController.dart';

class VideoPlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Video Player'),
      ),
      body: GetBuilder<VideoController>(
        init: VideoController(),
        builder: (controller) {
          if (!controller.isVideoInitialized.value) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Column(
              children: [
                AspectRatio(
                  aspectRatio: controller.videoPlayerController.value.aspectRatio,
                  child: Stack(
                    children: [
                      VideoPlayer(controller.videoPlayerController),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: IconButton(
                          icon: Icon(
                            Icons.fullscreen,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: controller.enterFullscreen,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(
                        controller.videoPlayerController.value.isPlaying
                            ? Icons.pause
                            : Icons.play_arrow,
                      ),
                      onPressed: controller.togglePlayPause,
                    ),
                    IconButton(
                      icon: Icon(Icons.replay),
                      onPressed: () {
                        controller.videoPlayerController.seekTo(Duration.zero);
                        controller.videoPlayerController.play();
                      },
                    ),
                  ],
                ),
                VideoProgressIndicator(
                  controller.videoPlayerController,
                  allowScrubbing: true,
                  colors: VideoProgressColors(
                    playedColor: Colors.blueAccent,
                    bufferedColor: Colors.grey,
                    backgroundColor: Colors.black12,
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
