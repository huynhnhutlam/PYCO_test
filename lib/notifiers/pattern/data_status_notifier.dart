import 'package:flutter/material.dart';

enum DataStatus { INIT, READY, LOADING, ERROR }

class DataStatusNotifier extends ChangeNotifier {
  DataStatus _status = DataStatus.INIT;
  DataStatus get status => _status;

  void setStatus(DataStatus s) {
    if (_status != s) {
      _status = s;
      notifyListeners();
    }
  }
}
