import 'subject.dart';
import 'observer.dart';
import 'clock_timer.dart';
import 'ja_clock.dart';
import 'en_clock.dart';

class ObserverPatternOperator {
  static void operation() {
    ClockTimer timer = ClockTimer();
    Observer jaClock = JaClock(timer, 'jaClock');
    Observer enClock = EnClock(timer, 'enClock');
    timer.attach(jaClock);
    timer.attach(enClock);

    // ３回時刻を刻む
    timer.tick();
    timer.tick();
    timer.tick();
  }
}
