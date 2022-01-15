import 'video_state.dart';
import 'video_play_state.dart';
import 'video_stop_state.dart';

class Video {
  late VideoState _playState;
  late VideoState _stopState;
  late VideoState _state;

  Video() {
    _stopState = VideoStopState(this);
    _playState = VideoPlayState(this);
    _state = _stopState;
  }

  VideoState get playState => _playState;
  VideoState get stopState => _stopState;

  set state(VideoState state) => _state = state;

  void play() => _state.play();

  void stop() => _state.stop();
}
