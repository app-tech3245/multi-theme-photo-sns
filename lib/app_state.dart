import 'package:flutter/material.dart';
import '/backend/backend.dart';
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
      _ThemeName = prefs.getString('ff_ThemeName') ?? _ThemeName;
    });
    _safeInit(() {
      _favourAdd = prefs.getBool('ff_favourAdd') ?? _favourAdd;
    });
    _safeInit(() {
      _following = prefs.getBool('ff_following') ?? _following;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _ThemeName = 'プラモ';
  String get ThemeName => _ThemeName;
  set ThemeName(String _value) {
    _ThemeName = _value;
    prefs.setString('ff_ThemeName', _value);
  }

  bool _favourAdd = false;
  bool get favourAdd => _favourAdd;
  set favourAdd(bool _value) {
    _favourAdd = _value;
    prefs.setBool('ff_favourAdd', _value);
  }

  bool _following = false;
  bool get following => _following;
  set following(bool _value) {
    _following = _value;
    prefs.setBool('ff_following', _value);
  }

  bool _flag = true;
  bool get flag => _flag;
  set flag(bool _value) {
    _flag = _value;
  }

  String _emailStore = '';
  String get emailStore => _emailStore;
  set emailStore(String _value) {
    _emailStore = _value;
  }

  bool _media = false;
  bool get media => _media;
  set media(bool _value) {
    _media = _value;
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
