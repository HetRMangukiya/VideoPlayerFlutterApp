import 'package:get/get.dart';
import 'package:video_player_app/VideoController.dart';

class VideoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VideoController>(() => VideoController());
  }
}
