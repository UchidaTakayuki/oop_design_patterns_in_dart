import 'video.dart';

class StatePatternOperator {
  static void operation() {
    // ビデオの再生と停止の操作
    Video video = Video();
    video.play();
    video.stop();
    video.stop();
  }
}
