import 'video.dart';

abstract class VideoState {
  Video _video;

  VideoState(this._video);

  Video get video => _video;

  void play();
  void stop();
}
