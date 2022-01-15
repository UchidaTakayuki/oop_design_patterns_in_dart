import 'video_state.dart';
import 'video_play_state.dart';

class VideoStopState extends VideoState {
  VideoStopState(video) : super(video);

  void play() {
    video.state = video.playState;
    print('The video is playing.');
  }

  void stop() {
    print('The video is stoped.');
  }
}
