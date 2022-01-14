import 'observer.dart';

abstract class Subject {
  Map<String, Observer> _observerMap = {};

  void attach(Observer observer) {
    _observerMap[observer.id] = observer;
  }

  void detach(Observer observer) {
    _observerMap.remove(observer.id);
  }

  void notify() {
    _observerMap.forEach((id, observer) {
      observer.update(this);
    });
  }
}
