import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _firsttime = prefs.getBool('ff_firsttime') ?? _firsttime;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _count = 0;
  int get count => _count;
  set count(int _value) {
    _count = _value;
  }

  bool _boolprovera = false;
  bool get boolprovera => _boolprovera;
  set boolprovera(bool _value) {
    _boolprovera = _value;
  }

  bool _firsttime = true;
  bool get firsttime => _firsttime;
  set firsttime(bool _value) {
    _firsttime = _value;
    prefs.setBool('ff_firsttime', _value);
  }

  bool _anonimus = false;
  bool get anonimus => _anonimus;
  set anonimus(bool _value) {
    _anonimus = _value;
  }

  bool _skener = true;
  bool get skener => _skener;
  set skener(bool _value) {
    _skener = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
