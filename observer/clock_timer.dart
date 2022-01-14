import 'dart:io';
import 'subject.dart';

class ClockTimer extends Subject {
  DateTime? _now;

  int get hour => _now == null ? 0 : _now!.hour;
  int get minute => _now == null ? 0 : _now!.minute;
  int get second => _now == null ? 0 : _now!.second;

  void tick() {
    sleep(Duration(seconds: 1)); // 表示秒数が変化するように１秒スリープする
    _now = DateTime.now();
    notify();
  }
}
