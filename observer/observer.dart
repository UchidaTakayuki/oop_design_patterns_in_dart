import 'subject.dart';

abstract class Observer {
  String get id;
  void update(Subject changedSubject);
}
