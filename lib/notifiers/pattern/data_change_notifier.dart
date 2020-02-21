import 'data_status_notifier.dart';

abstract class DataChangeNotifier<T> extends DataStatusNotifier {
  final Duration dataLifeTime = new Duration(minutes: 120);
  int version = DateTime.now().millisecondsSinceEpoch;
  String errorMsg;

  T _data;
  T get data => _data;

  void setData(T value) {
    _data = value;
    bool haveData = _data != null;
    if (_data is List)
      haveData = (_data as List).isNotEmpty;
    if (haveData) {
      version = DateTime.now().millisecondsSinceEpoch;
      setStatus(DataStatus.READY);
    } else {
      setStatus(DataStatus.ERROR);
    }
  }

  void loadData() async {
    await Future.delayed(Duration(milliseconds: 100));
    if (_data != null &&
        DateTime.now().millisecondsSinceEpoch - version <
            dataLifeTime.inMilliseconds) {
      setStatus(DataStatus.READY);
    } else {
      if (status == DataStatus.LOADING)
        return;
      setStatus(DataStatus.LOADING);
      T value = await getData();
      setData(value);
    }
  }

  Future<T> getData();
}