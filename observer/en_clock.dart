import 'clock_timer.dart';
import 'observer.dart';
import 'subject.dart';

class EnClock extends Observer {
  ClockTimer _timer;
  String _id;

  EnClock(this._timer, this._id);

  String get id => _id;

  void update(Subject changedSubject) {
    if (changedSubject == _timer) {
      printClock();
    }
  }

  void printClock() {
    print('${_timer.hour}h ${_timer.minute}min ${_timer.second}s');
  }
}
