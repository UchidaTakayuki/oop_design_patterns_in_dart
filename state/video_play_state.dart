import 'video.dart';
import 'video_state.dart';

class VideoPlayState extends VideoState {
  VideoPlayState(video) : super(video);

  void play() {
    print('The video is playing.');
  }

  void stop() {
    video.state = video.stopState;
    print('Stop the video.');
  }
}
