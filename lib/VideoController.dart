import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:video_player_app/FullscreenVideoPage.dart';

class VideoController extends GetxController {
  var isFullscreen = false.obs;
  var isVideoInitialized = false.obs;
  late VideoPlayerController videoPlayerController;

  @override
  void onInit() {
    super.onInit();
    videoPlayerController = VideoPlayerController.asset(
      'assets/videos/HRCodeExperts.mp4',
    )..initialize().then((_) {
      isVideoInitialized.value = true;
      videoPlayerController.play();
      update();
    });
  }

  @override
  void onClose() {
    videoPlayerController.dispose();
    super.onClose();
  }

  void togglePlayPause() {
    if (videoPlayerController.value.isPlaying) {
      videoPlayerController.pause();
    } else {
      videoPlayerController.play();
    }
    update();
  }

  void enterFullscreen() {
    isFullscreen.value = true;
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    Get.to(() => FullscreenVideoPage());
  }

  void exitFullscreen() {
    isFullscreen.value = false;
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    Get.back();
  }
}
