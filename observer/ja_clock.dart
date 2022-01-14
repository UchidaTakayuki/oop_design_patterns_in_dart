import 'clock_timer.dart';
import 'observer.dart';
import 'subject.dart';

class JaClock extends Observer {
  ClockTimer _timer;
  String _id;

  JaClock(this._timer, this._id);

  String get id => _id;

  void update(Subject changedSubject) {
    if (changedSubject == _timer) {
      printClock();
    }
  }

  void printClock() {
    print('${_timer.hour}時 ${_timer.minute}分 ${_timer.second}秒');
  }
}
