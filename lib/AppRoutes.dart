import 'package:get/get.dart';
import 'package:video_player_app/VideoPlayerPage.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/', page: () => VideoPlayerPage(),),
  ];
}
